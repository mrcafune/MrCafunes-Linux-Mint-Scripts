# MrCafunes-Linux-Mint-Scripts
These are scripts I've written to automate my Linux Mint setups.  These work for Ubuntu and most *buntu like nix distros.  Obvs come without any sort of warranty as I just use these in my day to day and figured it might help someone out / serve as an easy centralized location to add on, etc.

# Unity Complete
Unity-Complete will update your repositories as necessary to facilitate and install Unity Hub, VS Code & Mono-Complete, to install Microsofts .NET Framework, then finally prompt you to change some settings manually.  I felt it was necessary to create this script as I use Unity on multiple machines and realized there are just a lot of issues with the Current Version of Ubuntu & Unity.  Make workarounds / guides exist, I just took what was necessary from those and formatted into this.  This script:
- Installs Unity Hub (& repostitories) 
- Downloads & Installs the .deb for VScode
- Installs Mono-Complete (& repositories)
- Downloads the installer for the DotNet SDK and attempts to make it readable + Run

# Cleanup
Run this in the same directory as the files you're hoping to clean.  This does not run recursively in the directories of course and is mainly setup to be ran from my Downloads folder once a day to sort the files I download in my day-to-day.
### Supported File Types
*.mp3 *.ogg *.wav *.aac *.flac *.bmp *.bmp *.jpg *.jpeg *.gif *.png *.raw *.psd *.pdf *.doc *.docx *.dot *.xls *.xlsm *.ppt *.pptx *.mp4 *.mov *.wmv *.mkv *.webm *.avi *.mkv *.zip *.rar *.7z *.pzip *.gzip *.targz *.tar *.iso *.deb
