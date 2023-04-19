#!/bin/zsh
cp ./pf.conf /etc/pf.anchors/ves
cp ./ves.pfctl.plist /Library/LaunchDaemons/
launchctl load /Library/LaunchDaemons/ves.pfctl.plist
cp ./ves.vaultwarden.plist /Library/LaunchDaemons/
launchctl load /Library/LaunchDaemons/ves.vaultwarden.plist
cp ./ves.caddyserver.plist /Library/LaunchDaemons/
launchctl load /Library/LaunchDaemons/ves.caddyserver.plist
