import requests
import time
import os
from datetime import datetime

# Define base directory (one level up from "scripts")
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# URL daftar IP Uptime Robot
URL = "https://uptimerobot.com/inc/files/ips/IPv4.txt"

# Nama file output
output_file = os.path.join(BASE_DIR, "uptime-robot.rsc")
output_filename = os.path.basename(output_file)
list_name = "uptimerobot"

# Fetch IP list
start_time = time.time()
response = requests.get(URL)

if response.status_code != 200:
    print("Failed to fetch IP list!")
    exit(1)

ip_list = response.text.strip().split("\n")

# Timestamp & execution time
timestamp = datetime.now().strftime("%d %B %Y %H:%M:%S WIB")
execution_time = round(time.time() - start_time, 3)
total_lines = len(ip_list)

# MikroTik script header
header = f"""# Script untuk menambahkan IP Address Uptime Robot
# ke RouterOS dalam ADDRESS-LIST dengan nama "{list_name}"
# Script created by: rickyrsn <https://github.com/rickyrsn>
# Generated at {timestamp} ... {total_lines} lines
# Generated in {execution_time} seconds
# How-to: https://uptimerobot.com/

/sys note set show-at-login=yes note="Using {output_filename} from https://github.com/rickyrsn/mikrotik, {timestamp}, {total_lines} lines."

/ip firewall address-list
rem [find list="{list_name}"]
"""

# Write IPs into .rsc file
with open(output_file, "w") as file:
    file.write(header)
    for ip in ip_list:
        file.write(f'add list={list_name} address="{ip.strip()}"\n')

print(f"Script saved to {output_file}")
