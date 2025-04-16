# Script untuk menambahkan IP Address Uptime Robot
# ke RouterOS dalam ADDRESS-LIST dengan nama "uptimerobot"
# Script created by: rickyrsn <https://github.com/rickyrsn>
# Generated at 17 April 2025 00:12:24 WIB ... 66 lines
# Generated in 0.858 seconds
# How-to: https://uptimerobot.com/

/sys note set show-at-login=yes note="Using uptime-robot.rsc from https://github.com/rickyrsn/mikrotik, 17 April 2025 00:12:24 WIB, 66 lines."

/ip firewall address-list
rem [find list="uptimerobot"]
add list=uptimerobot address="104.131.107.63"
add list=uptimerobot address="122.248.234.23"
add list=uptimerobot address="128.140.106.114"
add list=uptimerobot address="128.140.41.193"
add list=uptimerobot address="128.199.195.156"
add list=uptimerobot address="135.181.154.9"
add list=uptimerobot address="138.197.150.151"
add list=uptimerobot address="139.59.173.249"
add list=uptimerobot address="142.132.180.39"
add list=uptimerobot address="146.185.143.14"
add list=uptimerobot address="157.90.155.240"
add list=uptimerobot address="157.90.156.63"
add list=uptimerobot address="159.203.30.41"
add list=uptimerobot address="159.69.158.189"
add list=uptimerobot address="159.89.8.111"
add list=uptimerobot address="165.227.83.148"
add list=uptimerobot address="167.235.143.113"
add list=uptimerobot address="167.99.209.234"
add list=uptimerobot address="168.119.123.75"
add list=uptimerobot address="168.119.53.160"
add list=uptimerobot address="168.119.96.239"
add list=uptimerobot address="178.62.52.237"
add list=uptimerobot address="18.116.205.62"
add list=uptimerobot address="18.180.208.214"
add list=uptimerobot address="216.144.248.16/28"
add list=uptimerobot address="216.245.221.80/28"
add list=uptimerobot address="3.105.133.239"
add list=uptimerobot address="3.105.190.221"
add list=uptimerobot address="3.12.251.153"
add list=uptimerobot address="3.20.63.178"
add list=uptimerobot address="3.212.128.62"
add list=uptimerobot address="34.198.201.66"
add list=uptimerobot address="35.166.228.98"
add list=uptimerobot address="35.84.118.171"
add list=uptimerobot address="37.27.28.153"
add list=uptimerobot address="37.27.29.68"
add list=uptimerobot address="37.27.30.213"
add list=uptimerobot address="37.27.34.49"
add list=uptimerobot address="37.27.82.220"
add list=uptimerobot address="37.27.87.149"
add list=uptimerobot address="44.227.38.253"
add list=uptimerobot address="46.101.250.135"
add list=uptimerobot address="49.13.130.29"
add list=uptimerobot address="49.13.134.145"
add list=uptimerobot address="49.13.164.148"
add list=uptimerobot address="49.13.167.123"
add list=uptimerobot address="49.13.24.81"
add list=uptimerobot address="5.161.61.238"
add list=uptimerobot address="5.161.75.7"
add list=uptimerobot address="5.78.118.142"
add list=uptimerobot address="5.78.87.38"
add list=uptimerobot address="52.15.147.27"
add list=uptimerobot address="52.22.236.30"
add list=uptimerobot address="54.167.223.174"
add list=uptimerobot address="54.249.170.27"
add list=uptimerobot address="54.64.67.106"
add list=uptimerobot address="54.79.28.129"
add list=uptimerobot address="65.109.129.165"
add list=uptimerobot address="65.109.142.78"
add list=uptimerobot address="65.109.8.202"
add list=uptimerobot address="69.162.124.224/28"
add list=uptimerobot address="78.46.190.63"
add list=uptimerobot address="78.46.215.1"
add list=uptimerobot address="78.47.173.76"
add list=uptimerobot address="78.47.98.55"
add list=uptimerobot address="88.99.80.227"
