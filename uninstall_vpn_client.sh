#!/bin/sh
#
#
# This script attempts to remove files belonging to Pulse Secure and Ivanti Connect Secure VPN Clients
# Official instructions are available here: https://forums.ivanti.com/s/article/Deep-Clean-Procedure-for-Windows-and-MAC?language=en_US
# Version 1.0
# Created by donkileen on 2024-08-16
#
echo '***************************************************************'
echo '***************************************************************'
echo 'Removing Pulse Secure files in ~/Library/Application Support folder'
echo ' '
rm -rf ~/Library/Application\ Support/Juniper\ Networks/SetupClient
rm -rf ~/Library/Application\ Support/Juniper\ Networks/HostChecker.app
rm -rf ~/Library/Application\ Support/Pulse\ Secure/SetupClient
rm -rf ~/Library/Application\ Support/Pulse\ Secure/HostChecker.app
rm -rf ~/Library/Application\ Support/Pulse\ Secure
rm -rf ~/Library/Application Support/Juniper Networks
echo 'Removing Pulse Secure files in /Applications folder'
echo ' '
rm -rf /Applications/Network\ Connect.app
rm -rf /Applications/Pulse\ Secure.app
rm -rf /Applications/Ivanti\ Secure\ Access.app
sudo /usr/local/juniper/nc/install/uninstall_nc.sh
echo 'Removing Pulse Secure files in ~/Library/Logs folder'
echo ' '
rm -rf ~/Library/Logs/Juniper\ Networks
rm -rf ~/Library/Logs/Pulse\ Secure
echo 'Removing Pulse Secure Launch Agents and Daemons in /Library folder'
echo ' '
rm /Library/LaunchAgents/net.pulsesecureCertService.plist
rm /Library/LaunchAgents/net.pulsesecure.pulseagent.plist
rm /Library/LaunchDaemons/net.pulsesecure.PulseOpswatServiceAgentbased.plist
rm /Library/LaunchDaemons/net.pulsesecure.PulseOpswatServiceAgentbased_x86_64.plist
rm ~/Library/Preferences/net.pulsesecure.Pulse-Secure.plist
echo 'Pulse Secure files removed successfully'
echo ' '
echo 'Please proceed with restarting your computer, then attempt to install the latest Ivanti VPN Client'