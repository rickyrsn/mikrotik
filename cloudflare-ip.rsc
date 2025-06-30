# Script untuk menambahkan IP Address Cloudflare
# ke RouterOS dalam ADDRESS-LIST dengan nama "cloudflare"
# Script created by: rickyrsn <https://github.com/rickyrsn>
# Generated at 01 July 2025 00:13:26 WIB ... 15 lines
# Generated in 0.164 seconds
# How-to: https://developers.cloudflare.com/fundamentals/get-started/basic-tasks/find-cloudflare-ip-addresses/

/sys note set show-at-login=yes note="Using cloudflare-ip.rsc from https://github.com/rickyrsn/mikrotik, 01 July 2025 00:13:26 WIB, 15 lines."

/ip firewall address-list
rem [find list="cloudflare"]
add list=cloudflare address="173.245.48.0/20"
add list=cloudflare address="103.21.244.0/22"
add list=cloudflare address="103.22.200.0/22"
add list=cloudflare address="103.31.4.0/22"
add list=cloudflare address="141.101.64.0/18"
add list=cloudflare address="108.162.192.0/18"
add list=cloudflare address="190.93.240.0/20"
add list=cloudflare address="188.114.96.0/20"
add list=cloudflare address="197.234.240.0/22"
add list=cloudflare address="198.41.128.0/17"
add list=cloudflare address="162.158.0.0/15"
add list=cloudflare address="104.16.0.0/13"
add list=cloudflare address="104.24.0.0/14"
add list=cloudflare address="172.64.0.0/13"
add list=cloudflare address="131.0.72.0/22"
