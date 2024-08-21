# Windows App Utility

This is my very first project. This project contains a basic script where you can choose if you want that app/tool or not by simply pressing Y (yes) or N (no). The main idea was to make it easier and faster to install all the apps again after a fresh install of windows. I used the commands from the package manager 'winget' which also makes it very easy to update all the installed apps.

I am open to suggestions for improvement.


## List of apps:

**Browser**
- Google Chrome
- Firefox
- Brave

**Development**
- Visual Studio Code
- Git
- Oracle.jdk.22
- Powershell
- Windows Terminal
- Virtual Box

**Document**
- Office 365
- LibreOffice
- Notepad++
- Obsidian
- Anki

**Communication**
- Discord

**Multimedia**
- VLC media player
- iTunes
- OBS Studio

**Tools**
- 7zip
- TranslucentTB
- Microsoft Powertoys
- Quicklook



## How to run the Installer

1. Run Powershell as administrator

2. Copy/paste one of these command into Powershell
```Powershell
irm https://raw.githubusercontent.com/Adnan327/WinAppInstall/main/WinAppInstall.ps1 | iex
```
Installer with GUI
```Powershell
irm https://raw.githubusercontent.com/Adnan327/WinAppInstall/main/WinAppInstallGUI.ps1 | iex
```


## Run via download file

1. Download zip at https://codeload.github.com/Adnan327/WinAppInstall/zip/refs/heads/main

2. Extract the folder

3. Run the script 'WinAppInstall.ps1' as administrator


## How to keep the apps up to date
To update all the apps, use this command
```
winget upgrade --all
```


