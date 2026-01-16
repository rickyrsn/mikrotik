# Script untuk menambahkan IP Address GitHub Github Hooks
# ke RouterOS dalam ADDRESS-LIST dengan nama "github_hooks"
# Script created by: rickyrsn <https://github.com/rickyrsn>
# Generated at 17 January 2026 00:20:14 WIB ... 6 lines
# Generated in 0.141 seconds
# How-to: https://docs.github.com/en/rest/meta

/sys note set show-at-login=yes note="Using github-hooks.rsc from https://github.com/rickyrsn/mikrotik, 17 January 2026 00:20:14 WIB, 6 lines."

/ip firewall address-list
rem [find list="github_hooks"]
add list=github_hooks address="192.30.252.0/22"
add list=github_hooks address="185.199.108.0/22"
add list=github_hooks address="140.82.112.0/20"
add list=github_hooks address="143.55.64.0/20"
add list=github_hooks address="2a0a:a440::/29"
add list=github_hooks address="2606:50c0::/32"
