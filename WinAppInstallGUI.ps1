
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$line = "------------------------------------------------------------------------" 

#Setting font/font-size
$header = New-Object System.Drawing.Font("Arial", 12)
$font = New-Object System.Drawing.Font("Arial", 11)

# Create a new form
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "App Installer"
$Form.Size = New-Object System.Drawing.Size(1556, 350)
$Form.StartPosition = "CenterScreen"
$Form.BackColor = [System.Drawing.Color]::FromArgb(50, 50, 50)              # Dark grey background
$Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle # window not extendable

# Farbschema für Dark Mode
$textColor = [System.Drawing.Color]::White
$buttonColor = [System.Drawing.Color]::FromArgb(70, 70, 70)

# -------------------------------------------Browser---------------------------------------------

# 1st panel
$panel = New-Object System.Windows.Forms.Panel
$panel.Size = New-Object System.Drawing.Size(200,250)
$panel.Location = New-Object System.Drawing.Point(10, 10)
$panel.BackColor = "LightGray"
$Form.Controls.Add($panel)

#--------Header--------
$browser = New-Object System.Windows.Forms.Label            # Create Label
$browser.Text = "Browser"                                   # Text
$browser.Location = New-Object System.Drawing.Point(5,10)  # Location
$browser.AutoSize = $true                                   # Size of textfield
$browser.Font = $header                                     # Font/fon-size
$panel.Controls.Add($browser)                               # Add the label to the form

#------Checkboxes------
# Firefox
$firefox = New-Object System.Windows.Forms.CheckBox         # Create Checkbox
$firefox.Text = "Firefox"                                   # Text
$firefox.Location = New-Object System.Drawing.Point(5,40)   # Location
$firefox.AutoSize = $true                                   # Size of textfield
$firefox.Font = $font                                       # Font/font-size
$panel.Controls.Add($firefox)                               # Add Checkbox to the form

# Google Chrome
$chrome = New-Object System.Windows.Forms.CheckBox
$chrome.Text = "Google Chrome"
$chrome.Location = New-Object System.Drawing.Point(5,60)
$chrome.AutoSize = $true
$chrome.Font = $font
$panel.Controls.Add($chrome)

# Brave
$brave = New-Object System.Windows.Forms.CheckBox
$brave.Text = "Brave"
$brave.Location = New-Object System.Drawing.Point(5,80)
$brave.AutoSize = $true
$brave.Font = $font
$panel.Controls.Add($brave)

# -----------------------------------------Development-------------------------------------------
# 2nd panel
$panel2 = New-Object System.Windows.Forms.Panel
$panel2.Size = New-Object System.Drawing.Size(200,250)
$panel2.Location = New-Object System.Drawing.Point(230, 10)      #20 space between panels
$panel2.BackColor = "LightGray"
$Form.Controls.Add($panel2)

#--------Header--------
$develop = New-Object System.Windows.Forms.Label            
$develop.Text = "Development"                                   
$develop.Location = New-Object System.Drawing.Point(5,10)
$develop.AutoSize = $true                                   
$develop.Font = $header                                     
$panel2.Controls.Add($develop)         

#------Checkboxes------
# Visual Studio Code
$vscode = New-Object System.Windows.Forms.CheckBox
$vscode.Text = "Visual Studio Code"
$vscode.Location = New-Object System.Drawing.Point(5,40)
$vscode.AutoSize = $true
$vscode.Font = $font
$panel2.Controls.Add($vscode)

# Git
$git = New-Object System.Windows.Forms.CheckBox
$git.Text = "Git"
$git.Location = New-Object System.Drawing.Point(5,60)
$git.AutoSize = $true
$git.Font = $font
$panel2.Controls.Add($git)

# Oracle.jdk.22
$jdk22 = New-Object System.Windows.Forms.CheckBox
$jdk22.Text = "Oracle.jdk.22"
$jdk22.Location = New-Object System.Drawing.Point(5,80)
$jdk22.AutoSize = $true
$jdk22.Font = $font
$panel2.Controls.Add($jdk22)

# Powershell
$powershell = New-Object System.Windows.Forms.CheckBox
$powershell.Text = "Powershell"
$powershell.Location = New-Object System.Drawing.Point(5,100)
$powershell.AutoSize = $true
$powershell.Font = $font
$panel2.Controls.Add($powershell)

# Windows Terminal
$winterminal = New-Object System.Windows.Forms.CheckBox
$winterminal.Text = "Windows Terminal"
$winterminal.Location = New-Object System.Drawing.Point(5,120)
$winterminal.AutoSize = $true
$winterminal.Font = $font
$panel2.Controls.Add($winterminal)

# Oracle VM VirtualBox
$vbox = New-Object System.Windows.Forms.CheckBox
$vbox.Text = "Oracle VM VirtualBox"
$vbox.Location = New-Object System.Drawing.Point(5,140)
$vbox.AutoSize = $true
$vbox.Font = $font
$panel2.Controls.Add($vbox)

# -------------------------------------------Document-------------------------------------------
# 3rd panel
$panel3 = New-Object System.Windows.Forms.Panel
$panel3.Size = New-Object System.Drawing.Size(200,250)
$panel3.Location = New-Object System.Drawing.Point(450, 10)      #20 space between panels
$panel3.BackColor = "LightGray"
$Form.Controls.Add($panel3)

#-------Dcoument-------
$doc = New-Object System.Windows.Forms.Label            
$doc.Text = "Document"                                   
$doc.Location = New-Object System.Drawing.Point(5,10)
$doc.AutoSize = $true                                   
$doc.Font = $header                                     
$panel3.Controls.Add($doc)    

# Office 365
$office365 = New-Object System.Windows.Forms.CheckBox
$office365.Text = "Office 365"
$office365.Location = New-Object System.Drawing.Point(5,40)
$office365.AutoSize = $true
$office365.Font = $font
$panel3.Controls.Add($office365)

# LibreOffice
$libreoffice = New-Object System.Windows.Forms.CheckBox
$libreoffice.Text = "LibreOffice"
$libreoffice.Location = New-Object System.Drawing.Point(5,60)
$libreoffice.AutoSize = $true
$libreoffice.Font = $font
$panel3.Controls.Add($libreoffice)

# Notepad++
$notepadqq = New-Object System.Windows.Forms.CheckBox
$notepadqq.Text = "Notepad++"
$notepadqq.Location = New-Object System.Drawing.Point(5,80)
$notepadqq.AutoSize = $true
$notepadqq.Font = $font
$panel3.Controls.Add($notepadqq)

# Obsidian
$obsidian = New-Object System.Windows.Forms.CheckBox
$obsidian.Text = "Obsidian"
$obsidian.Location = New-Object System.Drawing.Point(5,100)
$obsidian.AutoSize = $true
$obsidian.Font = $font
$panel3.Controls.Add($obsidian)

# Notion
$notion = New-Object System.Windows.Forms.CheckBox
$notion.Text = "Notion"
$notion.Location = New-Object System.Drawing.Point(5,120)
$notion.AutoSize = $true
$notion.Font = $font
$panel3.Controls.Add($notion)

# Anki
$anki = New-Object System.Windows.Forms.CheckBox
$anki.Text = "Anki"
$anki.Location = New-Object System.Drawing.Point(5,140)
$anki.AutoSize = $true
$anki.Font = $font
$panel3.Controls.Add($anki)

# ----------------------------------------Communication------------------------------------------
# 4th panel
$panel4 = New-Object System.Windows.Forms.Panel
$panel4.Size = New-Object System.Drawing.Size(200,250)
$panel4.Location = New-Object System.Drawing.Point(670, 10)      #20 space between panels
$panel4.BackColor = "LightGray"
$Form.Controls.Add($panel4)

#-----Communication-----
$communication = New-Object System.Windows.Forms.Label            
$communication.Text = "Communication"                                   
$communication.Location = New-Object System.Drawing.Point(5,10)
$communication.AutoSize = $true                                   
$communication.Font = $header                                     
$panel4.Controls.Add($communication) 

# Discord
$discord = New-Object System.Windows.Forms.CheckBox
$discord.Text = "Discord"
$discord.Location = New-Object System.Drawing.Point(5,40)
$discord.AutoSize = $true
$discord.Font = $font
$panel4.Controls.Add($discord)

#-------------------------------------------Multimedia-------------------------------------------
# 5th panel
$panel5 = New-Object System.Windows.Forms.Panel
$panel5.Size = New-Object System.Drawing.Size(200,250)
$panel5.Location = New-Object System.Drawing.Point(890, 10)      #20 space between panels
$panel5.BackColor = "LightGray"
$Form.Controls.Add($panel5)

#------Multimedia------
$multimedia = New-Object System.Windows.Forms.Label            
$multimedia.Text = "Multimedia"                                   
$multimedia.Location = New-Object System.Drawing.Point(5,10)
$multimedia.AutoSize = $true                                   
$multimedia.Font = $header                                     
$panel5.Controls.Add($multimedia) 

# VLC media player
$vlc = New-Object System.Windows.Forms.CheckBox
$vlc.Text = "VLC media player"
$vlc.Location = New-Object System.Drawing.Point(5,40)
$vlc.AutoSize = $true
$vlc.Font = $font
$panel5.Controls.Add($vlc)

# iTunes
$itunes = New-Object System.Windows.Forms.CheckBox
$itunes.Text = "iTunes"
$itunes.Location = New-Object System.Drawing.Point(5,60)
$itunes.AutoSize = $true
$itunes.Font = $font
$panel5.Controls.Add($itunes)

# OBS Studio
$obs = New-Object System.Windows.Forms.CheckBox
$obs.Text = "OBS Studio"
$obs.Location = New-Object System.Drawing.Point(5,80)
$obs.AutoSize = $true
$obs.Font = $font
$panel5.Controls.Add($obs)

# -------------------------------------------Gaming----------------------------------------------
# 6th panel
$panel6 = New-Object System.Windows.Forms.Panel
$panel6.Size = New-Object System.Drawing.Size(200,250)
$panel6.Location = New-Object System.Drawing.Point(1110, 10)      #20 space between panels
$panel6.BackColor = "LightGray"
$Form.Controls.Add($panel6)

#--------Gaming--------
$gaming = New-Object System.Windows.Forms.Label            
$gaming.Text = "Gaming"                                   
$gaming.Location = New-Object System.Drawing.Point(5,10)
$gaming.AutoSize = $true                                   
$gaming.Font = $header                                     
$panel6.Controls.Add($gaming) 

$steam = New-Object System.Windows.Forms.CheckBox
$steam.Text = "Steam"
$steam.Location = New-Object System.Drawing.Point(5,40)
$steam.AutoSize = $true
$steam.Font = $font
$panel6.Controls.Add($steam)

$epic = New-Object System.Windows.Forms.CheckBox
$epic.Text = "Epic Games Launcher"
$epic.Location = New-Object System.Drawing.Point(5,60)
$epic.AutoSize = $true
$epic.Font = $font
$panel6.Controls.Add($epic)

# --------------------------------------------Tools----------------------------------------------
# 6th panel
$panel7 = New-Object System.Windows.Forms.Panel
$panel7.Size = New-Object System.Drawing.Size(200,250)
$panel7.Location = New-Object System.Drawing.Point(1330, 10)      #20 space between panels
$panel7.BackColor = "LightGray"
$Form.Controls.Add($panel7)

#---------Tools--------
$tools = New-Object System.Windows.Forms.Label            
$tools.Text = "Tools"                                   
$tools.Location = New-Object System.Drawing.Point(5,10)
$tools.AutoSize = $true                                   
$tools.Font = $header                                     
$panel7.Controls.Add($tools) 

# 7zip
$7zip = New-Object System.Windows.Forms.CheckBox
$7zip.Text = "7zip"
$7zip.Location = New-Object System.Drawing.Point(5,40)
$7zip.AutoSize = $true
$7zip.Font = $font
$panel7.Controls.Add($7zip)

# TranslucentTB
$translucentTB = New-Object System.Windows.Forms.CheckBox
$translucentTB.Text = "TranslucentTB"
$translucentTB.Location = New-Object System.Drawing.Point(5,60)
$translucentTB.AutoSize = $true
$translucentTB.Font = $font
$panel7.Controls.Add($translucentTB)

# Microsoft Powertoys
$powertoys = New-Object System.Windows.Forms.CheckBox
$powertoys.Text = "Microsoft Powertoys"
$powertoys.Location = New-Object System.Drawing.Point(5,80)
$powertoys.AutoSize = $true
$powertoys.Font = $font
$panel7.Controls.Add($powertoys)

# QuickLook
$quicklook = New-Object System.Windows.Forms.CheckBox
$quicklook.Text = "QuickLook"
$quicklook.Location = New-Object System.Drawing.Point(5,100)
$quicklook.AutoSize = $true
$quicklook.Font = $font
$panel7.Controls.Add($quicklook)

# Speedtest by Ookla
$speedtest = New-Object System.Windows.Forms.CheckBox
$speedtest.Text = "Speedtest by Ookla"
$speedtest.Location = New-Object System.Drawing.Point(5,120)
$speedtest.AutoSize = $true
$speedtest.Font = $font
$panel7.Controls.Add($speedtest)

# --------------------------------------------Button---------------------------------------------

# Update
$update = New-Object System.Windows.Forms.Button
$update.Text = "Update"
$update.Location = New-Object System.Drawing.Point(1275,275)
$update.Size = New-Object System.Drawing.Size(75, 23)
$update.ForeColor = $textColor
$update.BackColor = $buttonColor
$Form.Controls.Add($update)

# Install
$install = New-Object System.Windows.Forms.Button
$install.Text = "Install"
$install.Location = New-Object System.Drawing.Point(1365,275)
$install.Size = New-Object System.Drawing.Size(75, 23)
$install.ForeColor = $textColor
$install.BackColor = $buttonColor
$Form.Controls.Add($install)

# finish
$finish = New-Object System.Windows.Forms.Button
$finish.Text = "Finish"
$finish.Location = New-Object System.Drawing.Point(1455,275)
$finish.Size = New-Object System.Drawing.Size(75, 23)
$finish.ForeColor = $textColor
$finish.BackColor = $buttonColor
$Form.Controls.Add($finish)

# Check authors apps
$my = New-Object System.Windows.Forms.Button
$my.Text = "Check My"
$my.Location = New-Object System.Drawing.Point(10,275)
$my.Size = New-Object System.Drawing.Size(75, 23)
$my.ForeColor = $textColor
$my.BackColor = $buttonColor
$Form.Controls.Add($my)

# Check all apps
$all = New-Object System.Windows.Forms.Button
$all.Text = "Check All"
$all.Location = New-Object System.Drawing.Point(100,275)
$all.Size = New-Object System.Drawing.Size(75, 23)
$all.ForeColor = $textColor
$all.BackColor = $buttonColor
$Form.Controls.Add($all)

# Install Button when clicked
$install.Add_Click({
    # Browser
    if ($firefox.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Firefox'" -NoNewline -ForegroundColor Yellow 
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install Mozilla.Firefox --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($chrome.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Google Chrome'" -NoNewline -ForegroundColor Yellow
        Write-Host "..."
        Start-Process -FilePath "winget" -ArgumentList "install Google.Chrome --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($brave.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Brave'" -NoNewline -ForegroundColor Yellow
        Write-Host "..."
        Start-Process -FilePath "winget" -ArgumentList "install Brave.Brave --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    # Development
    if ($vscode.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Visual Studio Code'" -NoNewline -ForegroundColor Yellow
        Write-Host "..."
        Start-Process -FilePath "winget" -ArgumentList "install Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($git.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Git'" -NoNewline -ForegroundColor Yellow
        Write-Host "..."
        Start-Process -FilePath "winget" -ArgumentList "install Git.Git --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($jdk22.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Oracle.jdk.22'" -NoNewline -ForegroundColor Yellow
        Write-Host "..."
        Start-Process -FilePath "winget" -ArgumentList "install Oracle.JDK.22 --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($powershell.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Powershell'" -NoNewline -ForegroundColor Yellow
        Write-Host "..."
        Start-Process -FilePath "winget" -ArgumentList "install Microsoft.PowerShell --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($winterminal.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Windows Terminal'" -NoNewline -ForegroundColor Yellow
        Write-Host "..."
        Start-Process -FilePath "winget" -ArgumentList "install Microsoft.WindowsTerminal --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($vbox.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'VirtualBox'" -NoNewline -ForegroundColor Yellow
        Write-Host "..."    
        Start-Process -FilePath "winget" -ArgumentList "install Oracle.VirtualBox --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    # Document
    if ($office365.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Office 365'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install Microsoft.Office --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($libreoffice.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'LibreOffice'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install TheDocumentFoundation.LibreOffice --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($notepadqq.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Notepad++'" -NoNewline -ForegroundColor Yellow
        Write-Host "..."     
        Start-Process -FilePath "winget" -ArgumentList "install Notepad++.Notepad++ --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($obsidian.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Obsidian'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install Obsidian.Obsidian --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($notion.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Notion'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install Notion.Notion --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($anki.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Anki'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install Anki.Anki --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    # Communication
    if ($discord.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Discord'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install Discord.Discord --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    # Multimedia
    if ($vlc.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'VLC media player'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install VideoLAN.VLC --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($itunes.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'iTunes'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install Apple.iTunes --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($obs.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'OBS Studio'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install OBSProject.OBSStudio --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    # Gaming
    if ($steam.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Steam'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install Valve.Steam --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($epic.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Epic Games Launcher'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install EpicGames.EpicGamesLauncher --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    # Tools
    if ($7zip.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'7zip'" -NoNewline -ForegroundColor Yellow -Verbose
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install 7zip.7zip --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($translucentTB.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'TranslucentTB'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install CharlesMilette.TranslucentTB --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru

    }
    if ($powertoys.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Microsoft Powertoys'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install Microsoft.PowerToys --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($quicklook.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'QuickLook'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install QL-Win.QuickLook --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    if ($speedtest.Checked) {
        Write-Host "Installing " -NoNewline
        Write-Host "'Speedtest by Ookla'" -NoNewline -ForegroundColor Yellow
        Write-Host "..." 
        Start-Process -FilePath "winget" -ArgumentList "install Ookla.Speedtest.Desktop --accept-package-agreements --accept-source-agreements" -NoNewWindow -Wait -PassThru
    }
    Start-Sleep -Seconds 1
    Write-Host $line -ForegroundColor Blue
    Write-Host "Installationen der Apps wurden abgschlossen!" -ForegroundColor Green
    Write-Host ""
})

# Check my button when clicked
$my.Add_Click({
     # Browser
     $firefox.Checked = $true
     #$chrome.Checked = $true
     $brave.Checked = $true
     # Development
     $vscode.Checked = $true
     $git.Checked = $true
     $jdk22.Checked = $true
     $powershell.Checked = $true
     $winterminal.Checked = $true
     $vbox.Checked = $true
     # Document
     #$office365.Checked = $true
     #$libreoffice.Checked = $true
     $notepadqq.Checked = $true
     $obsidian.Checked = $true
     $notion.Checked = $true
     $anki.Checked = $true
     # Communication
     $discord.Checked = $true
     # Multimedia
     $vlc.Checked = $true
     $itunes.Checked = $true
     #$obs.Checked = $true
     # Tools
     $7zip.Checked = $true
     $translucentTB.Checked = $true
     $powertoys.Checked = $true
     $quicklook.Checked = $true
     $speedtest.Checked = $true
 
     Write-Host "Checked boxes from author"
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
    # Document
    $office365.Checked = $true
    $libreoffice.Checked = $true
    $notepadqq.Checked = $true
    $obsidian.Checked = $true
    $notion.Checked = $true
    $anki.Checked = $true
    # Communication
    $discord.Checked = $true
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

    Write-Host "Checked all boxes" 
})   

# Update button when clicked
$update.Add_Click({
    winget upgrade --all        # Update all apps via winget
})

# Finish button when clicked
$finish.Add_Click({
    $Form.Close()               # This will close the form
})

# Show the form
$Form.ShowDialog()
