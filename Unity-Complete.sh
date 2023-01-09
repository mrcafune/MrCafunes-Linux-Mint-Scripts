#!/bin/bash

echo "Unity-Complete will update your repositories, install Unity Hub, VS Code & Mono-Complete, then finally prompt you to change some settings manually."
echo "This script is also provided as is with no warranty. Use at your own risk."
echo "Note that the sleeps are on purupose to give me a second to watch the monitor and make sure it's actually doing the next thing."
sleep 2
echo "Setting up VS Code.  The .deb will be downloaded and installed"
sleep 2
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
echo "File Downloaded, Installing"
sleep 1
sudo apt install ./vscode.deb
echo "VS Studio should now be installed. Cleaning up .deb file"
rm vscode.deb
echo "Setting up Unity Repositories"
sleep 2
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -
sudo apt update
sleep 2
echo "Updated Repository for Unity Hub / Editor"
echo "Installing Unity Hub"
sleep 2
sudo apt-get install unityhub
echo "Unity Hub install complete.  Now updating repositories for Monogame (Necessary for properly linking VS Code)"
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
echo "Repistory updated.  Refreshing & installing Mono-Complete"
sleep 2
sudo apt update
sleep 2
echo "Now installing Mono-Complete"
sudo apt-get install mono-complete
echo "Open VS Code, and install the C# Extension (ms-dotnettools-csharp)"
echo 'Installation Complete.'
echo "Running the mono-install.sh file that is in the same directory as this script."

echo 'Open up settings via File menu -> Preferences -> Settings (or Ctrl+, (control comma)) and search for “Omnisharp: Use Global Mono“, then set its value to “always”. Click “Restart Omnisharp” from the notification that appears at the bottom-right. You can also restart Omnisharp at any time by pressing Ctrl+Shift+P and selecting “OmniSharp: Restart OmniSharp”.'
sleep 11
echo "Downloading DotNet SDK installer for Ubuntu"
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
sleep 2
echo "Making the script executable & installing .net"
sudo chmod +x dotnet-install.sh
sudo sh dotnet-install.sh
