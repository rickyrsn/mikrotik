# Script untuk menambahkan IP Address Uptime Robot
# ke RouterOS dalam ADDRESS-LIST dengan nama "uptimerobot"
# Script created by: rickyrsn <https://github.com/rickyrsn>
# Generated at 10 March 2025 00:09:22 WIB ... 149 lines
# Generated in 0.585 seconds
# How-to: https://uptimerobot.com/

/sys note set show-at-login=yes note="Using uptime-robot.rsc from https://github.com/rickyrsn/mikrotik, 10 March 2025 00:09:22 WIB, 149 lines."

/ip firewall address-list
rem [find list="uptimerobot"]
add list=uptimerobot address="216.144.250.150"
add list=uptimerobot address="69.162.124.226"
add list=uptimerobot address="69.162.124.227"
add list=uptimerobot address="69.162.124.228"
add list=uptimerobot address="69.162.124.229"
add list=uptimerobot address="69.162.124.230"
add list=uptimerobot address="69.162.124.231"
add list=uptimerobot address="69.162.124.232"
add list=uptimerobot address="69.162.124.233"
add list=uptimerobot address="69.162.124.234"
add list=uptimerobot address="69.162.124.235"
add list=uptimerobot address="69.162.124.236"
add list=uptimerobot address="69.162.124.237"
add list=uptimerobot address="69.162.124.238"
add list=uptimerobot address="63.143.42.242"
add list=uptimerobot address="63.143.42.243"
add list=uptimerobot address="63.143.42.244"
add list=uptimerobot address="63.143.42.245"
add list=uptimerobot address="63.143.42.246"
add list=uptimerobot address="63.143.42.247"
add list=uptimerobot address="63.143.42.248"
add list=uptimerobot address="63.143.42.249"
add list=uptimerobot address="63.143.42.250"
add list=uptimerobot address="63.143.42.251"
add list=uptimerobot address="63.143.42.252"
add list=uptimerobot address="63.143.42.253"
add list=uptimerobot address="216.245.221.82"
add list=uptimerobot address="216.245.221.83"
add list=uptimerobot address="216.245.221.84"
add list=uptimerobot address="216.245.221.85"
add list=uptimerobot address="216.245.221.86"
add list=uptimerobot address="216.245.221.87"
add list=uptimerobot address="216.245.221.88"
add list=uptimerobot address="216.245.221.89"
add list=uptimerobot address="216.245.221.90"
add list=uptimerobot address="216.245.221.91"
add list=uptimerobot address="216.245.221.92"
add list=uptimerobot address="216.245.221.93"
add list=uptimerobot address="208.115.199.18"
add list=uptimerobot address="208.115.199.19"
add list=uptimerobot address="208.115.199.20"
add list=uptimerobot address="208.115.199.21"
add list=uptimerobot address="208.115.199.22"
add list=uptimerobot address="208.115.199.23"
add list=uptimerobot address="208.115.199.24"
add list=uptimerobot address="208.115.199.25"
add list=uptimerobot address="208.115.199.26"
add list=uptimerobot address="208.115.199.27"
add list=uptimerobot address="208.115.199.28"
add list=uptimerobot address="208.115.199.29"
add list=uptimerobot address="208.115.199.30"
add list=uptimerobot address="216.144.248.18"
add list=uptimerobot address="216.144.248.19"
add list=uptimerobot address="216.144.248.20"
add list=uptimerobot address="216.144.248.21"
add list=uptimerobot address="216.144.248.22"
add list=uptimerobot address="216.144.248.23"
add list=uptimerobot address="216.144.248.24"
add list=uptimerobot address="216.144.248.25"
add list=uptimerobot address="216.144.248.26"
add list=uptimerobot address="216.144.248.27"
add list=uptimerobot address="216.144.248.28"
add list=uptimerobot address="216.144.248.29"
add list=uptimerobot address="216.144.248.30"
add list=uptimerobot address="46.137.190.132"
add list=uptimerobot address="122.248.234.23"
add list=uptimerobot address="167.99.209.234"
add list=uptimerobot address="178.62.52.237"
add list=uptimerobot address="54.79.28.129"
add list=uptimerobot address="54.94.142.218"
add list=uptimerobot address="104.131.107.63"
add list=uptimerobot address="54.67.10.127"
add list=uptimerobot address="54.64.67.106"
add list=uptimerobot address="159.203.30.41"
add list=uptimerobot address="46.101.250.135"
add list=uptimerobot address="18.221.56.27"
add list=uptimerobot address="52.60.129.180"
add list=uptimerobot address="159.89.8.111"
add list=uptimerobot address="146.185.143.14"
add list=uptimerobot address="139.59.173.249"
add list=uptimerobot address="165.227.83.148"
add list=uptimerobot address="128.199.195.156"
add list=uptimerobot address="138.197.150.151"
add list=uptimerobot address="34.233.66.117"
add list=uptimerobot address="52.70.84.165"
add list=uptimerobot address="54.225.82.45"
add list=uptimerobot address="54.224.73.211"
add list=uptimerobot address="3.79.92.117"
add list=uptimerobot address="3.21.136.87"
add list=uptimerobot address="35.170.215.196"
add list=uptimerobot address="35.153.243.148"
add list=uptimerobot address="18.116.158.121"
add list=uptimerobot address="18.223.50.16"
add list=uptimerobot address="54.241.175.147"
add list=uptimerobot address="3.212.128.62"
add list=uptimerobot address="52.22.236.30"
add list=uptimerobot address="54.167.223.174"
add list=uptimerobot address="3.12.251.153"
add list=uptimerobot address="52.15.147.27"
add list=uptimerobot address="18.116.205.62"
add list=uptimerobot address="3.20.63.178"
add list=uptimerobot address="13.56.33.4"
add list=uptimerobot address="52.8.208.143"
add list=uptimerobot address="34.198.201.66"
add list=uptimerobot address="35.84.118.171"
add list=uptimerobot address="44.227.38.253"
add list=uptimerobot address="35.166.228.98"
add list=uptimerobot address="99.80.173.191"
add list=uptimerobot address="99.80.1.74"
add list=uptimerobot address="3.111.88.158"
add list=uptimerobot address="13.127.188.124"
add list=uptimerobot address="18.180.208.214"
add list=uptimerobot address="54.249.170.27"
add list=uptimerobot address="3.105.190.221"
add list=uptimerobot address="3.105.133.239"
add list=uptimerobot address="78.47.98.55"
add list=uptimerobot address="157.90.155.240"
add list=uptimerobot address="49.13.24.81"
add list=uptimerobot address="168.119.96.239"
add list=uptimerobot address="157.90.156.63"
add list=uptimerobot address="88.99.80.227"
add list=uptimerobot address="49.13.134.145"
add list=uptimerobot address="49.13.130.29"
add list=uptimerobot address="168.119.53.160"
add list=uptimerobot address="142.132.180.39"
add list=uptimerobot address="49.13.164.148"
add list=uptimerobot address="128.140.106.114"
add list=uptimerobot address="78.47.173.76"
add list=uptimerobot address="159.69.158.189"
add list=uptimerobot address="128.140.41.193"
add list=uptimerobot address="167.235.143.113"
add list=uptimerobot address="49.13.167.123"
add list=uptimerobot address="78.46.215.1"
add list=uptimerobot address="78.46.190.63"
add list=uptimerobot address="168.119.123.75"
add list=uptimerobot address="135.181.154.9"
add list=uptimerobot address="37.27.87.149"
add list=uptimerobot address="37.27.34.49"
add list=uptimerobot address="37.27.82.220"
add list=uptimerobot address="65.109.129.165"
add list=uptimerobot address="37.27.28.153"
add list=uptimerobot address="37.27.29.68"
add list=uptimerobot address="37.27.30.213"
add list=uptimerobot address="65.109.142.78"
add list=uptimerobot address="65.109.8.202"
add list=uptimerobot address="5.161.75.7"
add list=uptimerobot address="5.161.61.238"
add list=uptimerobot address="5.78.87.38"
add list=uptimerobot address="5.78.118.142"
