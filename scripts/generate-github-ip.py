import requests
import time
import os
from datetime import datetime

# Define base directory (one level up from "scripts")
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# URL GitHub Meta API
URL = "https://api.github.com/meta"

# Output files
output_actions = os.path.join(BASE_DIR, "github-actions.rsc")
output_hooks = os.path.join(BASE_DIR, "github-hooks.rsc")

# List names
list_actions = "github_actions"
list_hooks = "github_hooks"

# Fetch GitHub IP metadata
start_time = time.time()
response = requests.get(URL)

if response.status_code != 200:
    print("Failed to fetch GitHub IP list!")
    exit(1)

data = response.json()
ip_actions = data.get("actions", [])
ip_hooks = data.get("hooks", [])

# Timestamp & execution time
timestamp = datetime.now().strftime("%d %B %Y %H:%M:%S WIB")
execution_time = round(time.time() - start_time, 3)

# MikroTik script headers
def generate_header(list_name, output_file, total_lines):
    filename = os.path.basename(output_file)
    return f"""# Script untuk menambahkan IP Address GitHub {list_name.replace('_', ' ').title()}
# ke RouterOS dalam ADDRESS-LIST dengan nama "{list_name}"
# Script created by: rickyrsn <https://github.com/rickyrsn>
# Generated at {timestamp} ... {total_lines} lines
# Generated in {execution_time} seconds
# How-to: https://docs.github.com/en/rest/meta

/sys note set show-at-login=yes note="Using {filename} from https://github.com/rickyrsn/mikrotik, {timestamp}, {total_lines} lines."

/ip firewall address-list
rem [find list="{list_name}"]
"""

# Write GitHub Actions IPs
with open(output_actions, "w") as file:
    file.write(generate_header(list_actions, output_actions, len(ip_actions)))
    for ip in ip_actions:
        file.write(f'add list={list_actions} address="{ip}"\n')

print(f"Script saved to {output_actions}")

# Write GitHub Hooks IPs
with open(output_hooks, "w") as file:
    file.write(generate_header(list_hooks, output_hooks, len(ip_hooks)))
    for ip in ip_hooks:
        file.write(f'add list={list_hooks} address="{ip}"\n')

print(f"Script saved to {output_hooks}")
