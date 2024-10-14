# macOS-vpn-fix
This guide will help you remove your current install of the VPN client and related files, which will prep your system for a new install.

1. Use [this](https://github.com/ucsb/macOS-vpn-fix/releases/download/UninstallerScript/uninstall_vpn_client.sh) link to download a shell script that can automatically remove your current install of the VPN client. Use the terminal app to navigate to where the script is (`~/Downloads` is likely where your browser put it), then paste and enter this command:

    ```shell
    chmod +x ./uninstall_vpn_client.sh
    ```

    Then execute the script by pasting an entering this command:
    ```shell
    ./uninstall_vpn_client.sh
    ```
    
    If you prefer to remove the files manually, you can find them at the below places in your filesystem:

    ```shell
    /Applications/Pulse Secure.app
    /Library/Application Support/Pulse Secure/
    /Library/LaunchAgents/net.pulsesecure.pulsetray.plist
    /Library/LaunchDaemons/net.pulsesecure.AccessService.plist
    /Library/LaunchDaemons/net.pulsesecure.PulseOpswatServiceAgentbased_x86_64.plist
    /Library/LaunchDaemons/net.pulsesecure.PulseOpswatServiceAgentbased.plist
    /Library/LaunchDaemons/net.pulsesecure.UninstallPulse.plist
    ~/Library/Application Support/Pulse Secure (folder)
    ~/Library/Logs/Pulse Secure (folder)

    /Applications/Ivanti Secure Access.app
    /Library/LaunchAgents/net.pulsesecureCertService.plist
    /Library/LaunchAgents/net.pulsesecure.pulseagent.plist (not associated with the new client)
    /Library/LaunchDaemons/net.pulsesecure.PulseOpswatServiceAgentbased.plist
    /Library/LaunchDaemons/net.pulsesecure.PulseOpswatServiceAgentbased_x86_64.plist
    ~/Library/Preferences/net.pulsesecure.Pulse-Secure.plist
    ```

2. Now that you have removed the necessary files, restart your computer. 
3. Download a [fresh install](https://ucsb.app.box.com/folder/127781382319?s=tgtc8qb4460awsljgyrexx5zk160n7kr) of the Ivanti Secure Access App
4. After finishing the installation, attempt to log on. The first attempt may fail, but subsequent ones should succeed. If the fresh install continues to not work, contact [UCSB ITS](https://staff.sa.ucsb.edu/request-it-support) and report that this method failed to resolve your issue.
