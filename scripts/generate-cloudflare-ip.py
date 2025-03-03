import requests
import time
import os
from datetime import datetime
import pytz

# Define base directory (one level up from "scripts")
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# URL Cloudflare IPv4 IP list
URL = "https://www.cloudflare.com/ips-v4"

# Output file
output_file = os.path.join(BASE_DIR, "cloudflare-ip.rsc")
output_filename = os.path.basename(output_file)
list_name = "cloudflare"

# Fetch Cloudflare IPs
start_time = time.time()
response = requests.get(URL)

if response.status_code != 200:
  print("Failed to fetch Cloudflare IP list!")
  exit(1)

ip_list = response.text.strip().split("\n")

# Timestamp & execution time
timezone = pytz.timezone("Asia/Jakarta")
timestamp = datetime.now(timezone).strftime("%d %B %Y %H:%M:%S WIB")
execution_time = round(time.time() - start_time, 3)

# MikroTik script header
header = f"""# Script untuk menambahkan IP Address Cloudflare
# ke RouterOS dalam ADDRESS-LIST dengan nama "{list_name}"
# Script created by: rickyrsn <https://github.com/rickyrsn>
# Generated at {timestamp} ... {len(ip_list)} lines
# Generated in {execution_time} seconds
# How-to: https://developers.cloudflare.com/fundamentals/get-started/basic-tasks/find-cloudflare-ip-addresses/

/sys note set show-at-login=yes note="Using {output_filename} from https://github.com/rickyrsn/mikrotik, {timestamp}, {len(ip_list)} lines."

/ip firewall address-list
rem [find list="{list_name}"]
"""

# Write IPs into .rsc file
with open(output_file, "w") as file:
  file.write(header)
  for ip in ip_list:
    file.write(f'add list={list_name} address="{ip.strip()}"\n')

print(f"Script saved to {output_file}")
