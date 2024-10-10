Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$line = ""
for ($i = 0; $i -lt 120; $i++) {
    $line = $line + "="
} 

# Create a new form
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "App Installer"
$Form.Size = New-Object System.Drawing.Size(1556, 350)
$Form.StartPosition = "CenterScreen"
$Form.BackColor = [System.Drawing.Color]::FromArgb(50, 50, 50)              # Dark grey background
$Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle # window not extendable

# Load the custom icon
$iconPath = ".\Pictures\Install-icon.ico"
$icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath)
$form.Icon = $icon

# Function to create panels
function New-panel {
    param (
        [int]$width,
        [int]$height,
        [int]$x,
        [int]$y,
        [string]$backcolor
    )
    # create new panel-objekt
    $panel = New-Object System.Windows.Forms.Panel
    $panel.Size = New-Object System.Drawing.Size($width, $height)
    $panel.Location = New-Object System.Drawing.Point($x, $y)
    $panel.BackColor = "LightGray"

    # return the created panel
    return $panel
}
# function to create a new header
function New-header {
    param (
        [string]$name,
        [int]$x,
        [int]$y
    )
    $header = New-Object System.Windows.Forms.Label
    $header.Text = "$name" 
    $header.Location = New-Object System.Drawing.Point($x, $y)
    $header.AutoSize = $true
    $header.Font = New-Object System.Drawing.Font("Arial", 12)  

    return $header
}
# function to create a new app
function New-app {
    param (
        [string]$name,
        [int]$x,
        [int]$y
    )
    $app = New-Object System.Windows.Forms.CheckBox             # Create Checkbox
    $app.Text = "$name"                                         # Text
    $app.Location = New-Object System.Drawing.Point($x, $y)      # Location
    $app.AutoSize = $true                                       # Size of textfield
    $app.Font = New-Object System.Drawing.Font("Arial", 11)     # Font/font-size

    return $app
}
# -------------------------------------------Browser---------------------------------------------

$panel1 = New-panel -width 200 -height 250 -x 10 -y 10 -backcolor "LightGray"
$Form.Controls.Add($panel1)

#--------Header--------
$browser = New-header -name "Browser" -x 5 -y 10
$panel1.Controls.Add($browser)                               # Add the label to the form

#------Checkboxes------

# Firefox
$firefox = New-app -name "Firefox" -x 5 -y 40
$panel1.Controls.Add($firefox)

# Google Chrome
$chrome = New-app -name "Google Chrome" -x 5 -y 60
$panel1.Controls.Add($chrome)

# Brave
$brave = New-app -name "Brave" -x 5 -y 80
$panel1.Controls.Add($brave)


# -----------------------------------------Development-------------------------------------------
# 2nd panel
$panel2 = New-panel -width 200 -height 250 -x 230 -y 10 -backcolor "LightGray"
$Form.Controls.Add($panel2)

#--------Header--------
$develop = New-header -name "Development" -x 5 -y 10                                                                                                     
$panel2.Controls.Add($develop)         

#------Checkboxes------
# Visual Studio Code
$vscode = New-app -name "Visual Studio Code" -x 5 -y 40
$panel2.Controls.Add($vscode)

# Git
$git = New-app -name "Git" -x 5 -y 60
$panel2.Controls.Add($git)

# Oracle.jdk.22
$jdk22 = New-app -name "Oracle.jdk.22" -x 5 -y 80
$panel2.Controls.Add($jdk22)

# Powershell
$powershell = New-app -name "Powershell" -x 5 -y 100
$panel2.Controls.Add($powershell)

# Windows Terminal
$winterminal = New-app -name "Windows Terminal" -x 5 -y 120
$panel2.Controls.Add($winterminal)

# Oracle VM VirtualBox
$vbox = New-app -name "Oracle VM VirtualBox" -x 5 -y 140
$panel2.Controls.Add($vbox)

# Racket
$racket = New-app -name "Racket" -x 5 -y 160
$panel2.Controls.Add($racket)

# IntelliJ IDEA Community Edition
$intellij = New-app -name "IntelliJ Community Edition" -x 5 -y 180
$panel2.Controls.Add($intellij)

# -------------------------------------------Document-------------------------------------------
# 3rd panel
$panel3 = New-panel -width 200 -height 250 -x 450 -y 10 -backcolor "LightGray"
$Form.Controls.Add($panel3)

#--------Header--------
$doc = New-header -name "Document" -x 5 -y 10                                                                                                     
$panel3.Controls.Add($doc)   

# Office 365
$office365 = New-app -name "Office 365" -x 5 -y 40
$panel3.Controls.Add($office365)

# LibreOffice
$libreoffice = New-app -name "LibreOffice" -x 5 -y 60
$panel3.Controls.Add($libreoffice)

# Notepad++
$notepadqq = New-app -name "Notepad++" -x 5 -y 80
$panel3.Controls.Add($notepadqq)

# Obsidian
$obsidian = New-app -name "Obsidian" -x 5 -y 100
$panel3.Controls.Add($obsidian)

# Notion
$notion = New-app -name "Office 365" -x 5 -y 120
$panel3.Controls.Add($notion)

# Anki
$anki = New-app -name "Anki" -x 5 -y 140
$panel3.Controls.Add($anki)

# ----------------------------------------Communication------------------------------------------
# 4th panel
$panel4 = New-panel -width 200 -height 250 -x 670 -y 10 -backcolor "LightGray"
$Form.Controls.Add($panel4)

#--------Header--------
$communication = New-header -name "Communication" -x 5 -y 10                                                                                                     
$panel4.Controls.Add($communication)  

# Discord
$discord = New-app -name "Discord" -x 5 -y 40
$panel4.Controls.Add($discord)

#-------------------------------------------Multimedia-------------------------------------------
# 5th panel
$panel5 = New-panel -width 200 -height 250 -x 890 -y 10 -backcolor "LightGray"
$Form.Controls.Add($panel5)

#--------Header--------
$communication = New-header -name "Multimedia" -x 5 -y 10                                                                                                     
$panel5.Controls.Add($communication) 

# VLC media player
$vlc = New-app -name "VLC media player" -x 5 -y 40
$panel5.Controls.Add($vlc)

# iTunes
$itunes = New-app -name "iTunes" -x 5 -y 60
$panel5.Controls.Add($itunes)

# OBS Studio
$obs = New-app -name "OBS Studio" -x 5 -y 80
$panel5.Controls.Add($obs)

# -------------------------------------------Gaming----------------------------------------------
# 6th panel
$panel6 = New-panel -width 200 -height 250 -x 1110 -y 10 -backcolor "LightGray"
$Form.Controls.Add($panel6)

#--------Header--------
$gaming = New-header -name "Gaming" -x 5 -y 10                                                                                                     
$panel6.Controls.Add($gaming) 

# steam
$steam = New-app -name "Steam" -x 5 -y 40
$panel6.Controls.Add($steam)

# Epic Games Launcher
$epic = New-app -name "Epic Games Launcher" -x 5 -y 60
$panel6.Controls.Add($epic)

# --------------------------------------------Tools----------------------------------------------
# 7th panel
$panel7 = New-panel -width 200 -height 250 -x 1330 -y 10 -backcolor "LightGray"
$Form.Controls.Add($panel7)

#--------Header--------
$tools = New-header -name "Tools" -x 5 -y 10                                                                                                     
$panel7.Controls.Add($tools) 

# 7zip
$7zip = New-app -name "7zip" -x 5 -y 40
$panel7.Controls.Add($7zip)

# TranslucentTB
$translucentTB = New-app -name "TranslucentTB" -x 5 -y 60
$panel7.Controls.Add($translucentTB)

# Microsoft Powertoys
$powertoys = New-app -name "Microsoft Powertoys" -x 5 -y 80
$panel7.Controls.Add($powertoys)

# QuickLook
$quicklook = New-app -name "QickLook" -x 5 -y 100
$panel7.Controls.Add($quicklook)

# Speedtest by Ookla
$speedtest = New-app -name "Speedtest by Ookla" -x 5 -y 120
$panel7.Controls.Add($speedtest)

# Garmin Express
$garmin = New-app -name "Garmin Express" -x 5 -y 140
$panel7.Controls.Add($garmin)

# Oh-my-posh
$posh = New-app -name "Oh-my-posh" -x 5 -y 160
$panel7.Controls.Add($posh)

# Bitwarden
$bitwarden = New-app -name "Bitwarden" -x 5 -y 180
$panel7.Controls.Add($bitwarden)

# --------------------------------------------Button---------------------------------------------

function New-button {
    param (
        [string]$name,
        [int]$x,
        [int]$y
    )
    $button = New-Object System.Windows.Forms.Button
    $button.Text = "$name"
    $button.Location = New-Object System.Drawing.Point($x, $y)
    $button.Size = New-Object System.Drawing.Size(75, 23)
    $button.ForeColor = [System.Drawing.Color]::White
    $button.BackColor = [System.Drawing.Color]::FromArgb(70, 70, 70)

    return $button
}

# Update
$update = New-button -name "Update" -x 1275 -y 275
$Form.Controls.Add($update)

# Install
$install = New-button -name "Install" -x 1365 -y 275
$Form.Controls.Add($install)

# finish
$finish = New-button -name "Finish" -x 1455 -y 275
$Form.Controls.Add($finish)

# Check authors apps
$my = New-button -name "Check My" -x 10 -y 275
$Form.Controls.Add($my)

# Check all apps
$all = New-button -name "Check All" -x 100 -y 275
$Form.Controls.Add($all)

# Install Button when clicked
function check {
    param (
        [string]$name,
        [string]$id
    )
    Write-Host "Installing " -NoNewline
    Write-Host "'$name'" -NoNewline -ForegroundColor Yellow 
    Write-Host "..." 
    Start-Process -FilePath "winget" -ArgumentList "install $id -h --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
}

$install.Add_Click({
        # Browser
        if ($firefox.Checked) {
            check -name "Firefox" -id "Mozilla.Firefox"
        }
        if ($chrome.Checked) {
            check -name "Google Chrome" -id "Google.Chrome"
        }
        if ($brave.Checked) {
            check -name "Brave" -id "Brave.Brave"
        }
        # Development
        if ($vscode.Checked) {
            check -name "Visual Studio Code" -id "Microsoft.VisualStudioCode"
        }
        if ($git.Checked) {
            check -name "Git" -id "Git.Git"
        }
        if ($jdk22.Checked) {
            check -name "Oracle.jdk.22" -id "Oracle.JDK.22"
        }
        if ($powershell.Checked) {
            check -name "Powershell" -id "Microsoft.PowerShell"
        }
        if ($winterminal.Checked) {
            check -name "Windows Terminal" -id "Microsoft.WindowsTerminal"
        }
        if ($vbox.Checked) {
            check -name "VirtualBox" -id "Oracle.VirtualBox"
        }
        if ($racket.Checked) {
            check -name "Racket" -id "Racket.Racket"
        }
        if ($intellij.Checked) {
            check -name "IntelliJ IDEA Community Edition" -id "JetBrains.IntelliJIDEA.Community"
        }
        # Document
        if ($office365.Checked) {
            check -name "Office 365" -id "Microsoft.Office"
        }
        if ($libreoffice.Checked) {
            check -name "LibreOffice" -id "TheDocumentFoundation.LibreOffice"
        }
        if ($notepadqq.Checked) {
            check -name "Notepad++" -id "Notepad++.Notepad++"
        }
        if ($obsidian.Checked) {
            check -name "Obsidian" -id "Obsidian.Obsidian"
        }
        if ($notion.Checked) {
            check -name "Notion" -id "Notion.Notion"
        }
        if ($anki.Checked) {
            check -name "Anki" -id "Anki.Anki"
        }
        # Communication
        if ($discord.Checked) {
            check -name "Discord" -id "Discord.Discord"
        }
        # Multimedia
        if ($vlc.Checked) {
            check -name "VLC media player" -id "VideoLAN.VLC"
        }
        if ($itunes.Checked) {
            check -name "iTunes" -id "Apple.iTunes"
        }
        if ($obs.Checked) {
            check -name "OBS Studio" -id "OBSProject.OBSStudio"
        }
        # Gaming
        if ($steam.Checked) {
            check -name "Steam" -id "Valve.Steam"
        }
        if ($epic.Checked) {
            check -name "Epic Games Launcher" -id "EpicGames.EpicGamesLauncher"
        }
        # Tools
        if ($7zip.Checked) {
            check -name "7zip" -id "7zip.7zip"
        }
        if ($translucentTB.Checked) {
            check -name "TranslucentTB" -id "CharlesMilette.TranslucentTB"
        }
        if ($powertoys.Checked) {
            check -name "Microsoft Powertoys" -id "Microsoft.PowerToys"
        }
        if ($quicklook.Checked) {
            check -name "QuickLook" -id "QL-Win.QuickLook"
        }
        if ($speedtest.Checked) {
            check -name "Speedtest by Ookla" -id "Ookla.Speedtest.Desktop"
        }
        if ($garmin.Checked) {
            check -name "Garmin Express" -id "Garmin.Express"
        }
        if ($posh.Checked) {
            check -name "Oh-my-posh" -id "JanDeDobbeleer.OhMyPosh"
        }
        if ($bitwarden.Checked) {
            check -name "Bitwarden" -id "Bitwarden.Bitwarden"
        }
        Start-Sleep -Seconds 1
        Write-Host $line -ForegroundColor Blue
        Write-Host "Installation finished!" -ForegroundColor Green
        Write-Host $line -ForegroundColor Blue
        Write-Host ""
    })

# Check my button when clicked
$my.Add_Click({
        # Browser
        $firefox.Checked = $true
        $chrome.Checked = $false
        $brave.Checked = $true
        # Development
        $vscode.Checked = $true
        $git.Checked = $true
        $jdk22.Checked = $true
        $powershell.Checked = $true
        $winterminal.Checked = $true
        $vbox.Checked = $true
        $racket.Checked = $true
        $intellij.Checked = $true
        # Document
        $office365.Checked = $false
        $libreoffice.Checked = $false
        $notepadqq.Checked = $true
        $obsidian.Checked = $true
        $notion.Checked = $true
        $anki.Checked = $true
        # Communication
        $discord.Checked = $true
        # Gaming
        $steam.Checked = $false
        $epic.Checked = $false
        # Multimedia
        $vlc.Checked = $true
        $itunes.Checked = $true
        $obs.Checked = $false
        # Tools
        $7zip.Checked = $true
        $translucentTB.Checked = $true
        $powertoys.Checked = $true
        $quicklook.Checked = $true
        $speedtest.Checked = $true
        $garmin.Checked = $true
        $posh.Checked = $true
        $bitwarden.Checked = $true

        Write-Host "Checked authors boxes"
    })

# Check all button when clicked
$all.Add_Click({
        # Browser
        $firefox.Checked = $true
        $chrome.Checked = $true
        $brave.Checked = $true
        # Development
        $vscode.Checked = $true
        $git.Checked = $true
        $jdk22.Checked = $true
        $powershell.Checked = $true
        $winterminal.Checked = $true
        $vbox.Checked = $true
        $racket.Checked = $true
        $intellij.Checked = $true
        # Document
        $office365.Checked = $true
        $libreoffice.Checked = $true
        $notepadqq.Checked = $true
        $obsidian.Checked = $true
        $notion.Checked = $true
        $anki.Checked = $true
        # Communication
        $discord.Checked = $true
        # Gaming
        $steam.Checked = $true
        $epic.Checked = $true
        # Multimedia
        $vlc.Checked = $true
        $itunes.Checked = $true
        $obs.Checked = $true
        # Tools
        $7zip.Checked = $true
        $translucentTB.Checked = $true
        $powertoys.Checked = $true
        $quicklook.Checked = $true
        $speedtest.Checked = $true
        $garmin.Checked = $true
        $posh.Checked = $true
        $bitwarden.Checked = $true

        Write-Host "Checked all boxes" 
    })   

# Update button when clicked
$update.Add_Click({
        # Update all apps via winget
        Start-Process -FilePath "winget" -ArgumentList "upgrade --all" -NoNewWindow -Wait -PassThru

        Start-Sleep -Seconds 1
        Write-Host $line -ForegroundColor Blue
        Write-Host "Updates finished!" -ForegroundColor Green
        Write-Host $line -ForegroundColor Blue
        Write-Host ""
    })

# Finish button when clicked
$finish.Add_Click({
        $Form.Close()               # This will close the form
    })

# Show the form
$Form.ShowDialog()
