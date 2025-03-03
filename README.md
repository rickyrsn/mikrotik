# MikroTik IP Address Lists

This repository contains automatically generated MikroTik RouterOS scripts for managing IP address lists from various services:

- Cloudflare IP ranges
- GitHub Actions IP ranges
- GitHub Webhooks IP ranges
- UptimeRobot IP ranges

## Usage

1. Download the `.rsc` file you need:
   - [cloudflare-ip.rsc](cloudflare-ip.rsc) - Cloudflare IP ranges
   - [github-actions.rsc](github-actions.rsc) - GitHub Actions IP ranges
   - [github-hooks.rsc](github-hooks.rsc) - GitHub Webhooks IP ranges
   - [uptime-robot.rsc](uptime-robot.rsc) - UptimeRobot IP ranges

2. Upload the script to your MikroTik router and execute it to create/update the address lists:
   - `cloudflare` - Contains Cloudflare IP ranges
   - `github_actions` - Contains GitHub Actions IP ranges
   - `github_hooks` - Contains GitHub Webhooks IP ranges
   - `uptime_robot` - Contains UptimeRobot IP ranges

## Auto-Update on MikroTik Router

### Method 1: Manual Upload and Scheduled Import

1. Upload the `.rsc` files to your router via WinBox or WebFig
2. Create a schedule using these commands:

```routeros
/system scheduler
add interval=24h name=update-ip-lists on-event=\
"import cloudflare-ip.rsc\r\
\nimport github-actions.rsc\r\
\nimport github-hooks.rsc\r\
\nimport uptime-robot.rsc" \
policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
start-date=jan/01/2024 start-time=00:00:00
```

### Method 2: Automatic Download and Import

1. Create a script to download and import the files:

```routeros
/system script
add name=update-ip-lists source={
    :log info "Downloading IP lists..."
    
    /tool fetch url="https://raw.githubusercontent.com/rickyrsn/mikrotik/refs/heads/main/cloudflare-ip.rsc"
    /import cloudflare-ip.rsc
    
    /tool fetch url="https://raw.githubusercontent.com/rickyrsn/mikrotik/refs/heads/main/github-actions.rsc"
    /import github-actions.rsc
    
    /tool fetch url="https://raw.githubusercontent.com/rickyrsn/mikrotik/refs/heads/main/github-hooks.rsc"
    /import github-hooks.rsc
    
    /tool fetch url="https://raw.githubusercontent.com/rickyrsn/mikrotik/refs/heads/main/uptime-robot.rsc"
    /import uptime-robot.rsc
    
    :log info "IP lists updated successfully"
}

2. Create a scheduler to run the script:

```routeros
/system scheduler
add interval=24h name=auto-update-ip-lists on-event=\
"/system script run update-ip-lists" \
policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
start-date=jan/01/1970 start-time=03:00:00
```

## Auto-Update via GitHub Actions

The IP lists are automatically updated daily at 00:00 WIB (GMT+7) using GitHub Actions. The workflow can also be triggered manually.

## Scripts

The Python scripts in the [scripts](scripts/) directory fetch the latest IP ranges from:
- Cloudflare: [generate-cloudflare-ip.py](scripts/generate-cloudflare-ip.py)
- GitHub: [generate-github-ip.py](scripts/generate-github-ip.py)
- UptimeRobot: [generate-uptimerobot-ip.py](scripts/generate-uptimerobot-ip.py)

## Requirements

To run the scripts locally, install the required Python packages:

```bash
pip install -r scripts/requirements.txt
```

## License

This project is open source and available under the MIT License.