# Frage den Benutzer nach Ja oder Nein  
$input1 = Read-Host "Möchtest du mit den Installationen beginnen? (Y/N)" 
$line = "------------------------------------------------------------------------" 

# Überprüfe die Eingabe
if ($input1 -eq 'Y' -or $input1 -eq 'y') {
    Write-Host ""
    # -------------------------------------------Browser---------------------------------------------
    Write-Host $line -ForegroundColor Blue
    Write-Host "                                Browser" -ForegroundColor Blue
    Write-Host $line -ForegroundColor Blue
    Write-Host ""
    Start-Sleep -Seconds 0.5

    # install Google Chrome
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Google Chrome' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $chrome = Read-Host
    if ($chrome -eq 'Y' -or $chrome -eq 'y') {
        Write-Host "'Google Chrome' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..." 
        winget install Google.Chrome -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Firefox
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Firefox' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $firefox = Read-Host
    if ($firefox -eq 'Y' -or $firefox -eq 'y') {
        Write-Host "'Firefox' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..." 
        winget install Mozilla.Firefox -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Brave
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Brave' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $brave = Read-Host 
    if ($brave -eq 'Y' -or $brave -eq 'y') {
        Write-Host "'Brave' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Brave.Brave -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    } else {
        Write-Host ""
    }
    Start-Sleep -Seconds 0.5
    Write-Host "Browser-Installation abgeschlossen!" -ForegroundColor Green
    Write-Host ""
    Start-Sleep -Seconds 1

    # -----------------------------------------Development-------------------------------------------
    Write-Host $line -ForegroundColor Blue
    Write-Host "                              Development" -ForegroundColor Blue
    Write-Host $line -ForegroundColor Blue
    Write-Host ""
    Start-Sleep -Seconds 0.5

    # install Visual Studio Code
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Visual Studio Code' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $vscode = Read-Host 
    if ($vscode -eq 'Y' -or $vscode -eq 'y') {
        Write-Host "'Visual Studio Code' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Microsoft.VisualStudioCode -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Git
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Git' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $git = Read-Host
    if ($git -eq 'Y' -or $git -eq 'y') {   
        Write-Host "'Git' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Git.Git -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Oracle.jdk.22
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Oracle.jdk.22' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $jdk22 = Read-Host 
    if ($jdk22 -eq 'Y' -or $jdk22 -eq 'y') { 
        Write-Host "'Oracle.jdk.22' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Oracle.JDK.22 -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }
    # install Powershell
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Powershell' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $powershell = Read-Host
    if ($powershell -eq 'Y' -or $powershell -eq 'y') { 
        Write-Host "'Powershell' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Microsoft.PowerShell -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Windows Terminal
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Windows Terminal' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $winterminal = Read-Host 
    if ($winterminal -eq 'Y' -or $winterminal -eq 'y') { 
        Write-Host "'Windows Terminal' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Microsoft.WindowsTerminal -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install VirtualBox
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'VirtualBox' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $vb = Read-Host 
    if ($vb -eq 'Y' -or $vb -eq 'y') { 
        Write-Host "'VirtualBox' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install VirtualBox Oracle.VirtualBox 
        Write-Host ""
    } else {
        Write-Host ""
    }
    Start-Sleep -Seconds 0.5
    Write-Host "Development-Installation abgeschlossen!" -ForegroundColor Green
    Write-Host ""
    Start-Sleep -Seconds 1

    # -------------------------------------------Document-------------------------------------------
    Write-Host $line -ForegroundColor Blue
    Write-Host "                                Document" -ForegroundColor Blue
    Write-Host $line -ForegroundColor Blue
    Write-Host ""
    Start-Sleep -Seconds 0.5

    # install Office365
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Office365' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $office365 = Read-Host
    if ($office365 -eq 'Y' -or $office365 -eq 'y') { 
        Write-Host "'Office365' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Microsoft.Office -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install LibreOffice
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'LibreOffice' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $libre = Read-Host
    if ($libre -eq 'Y' -or $libre -eq 'y') { 
        Write-Host "'LibreOffice' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install TheDocumentFoundation.LibreOffice -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Notepad++
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Notepad++' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $notepadqq = Read-Host 
    if ($notepadqq -eq 'Y' -or $notepadqq -eq 'y') {   
        Write-Host "'Notepad++' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Notepad++.Notepad++ -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Obsidian
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Obsidian' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $obsidian = Read-Host 
    if ($obsidian -eq 'Y' -or $obsidian -eq 'y') { 
        Write-Host "'Obsidian' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Obsidian.Obsidian -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Anki
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Anki' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $anki = Read-Host
    if ($anki -eq 'Y' -or $anki -eq 'y') { 
        Write-Host "'Anki' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Anki.Anki -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    } else {
        Write-Host ""
    }
    Start-Sleep -Seconds 0.5
    Write-Host "Document-Installation abgeschlossen!" -ForegroundColor Green
    Write-Host ""
    Start-Sleep -Seconds 1

    # ----------------------------------------Communication------------------------------------------
    Write-Host $line -ForegroundColor Blue
    Write-Host "                             Communication" -ForegroundColor Blue
    Write-Host $line -ForegroundColor Blue
    Write-Host ""
    Start-Sleep -Seconds 0.5

    # install Discord
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Discord' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $discord = Read-Host
    if ($discord -eq 'Y' -or $discord -eq 'y') { 
        Write-Host "'Discord' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Discord.Discord -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    } else {
        Write-Host ""
    }
    Start-Sleep -Seconds 0.5
    Write-Host "Communication-Installation abgeschlossen!" -ForegroundColor Green
    Write-Host""
    Start-Sleep -Seconds 1

    #-------------------------------------------Multimedia-------------------------------------------
    Write-Host $line -ForegroundColor Blue
    Write-Host "                               Multimedia" -ForegroundColor Blue
    Write-Host $line -ForegroundColor Blue
    Write-Host ""
    Start-Sleep -Seconds 0.5

    # install VLC media player
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'VLC media player' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $vlc = Read-Host
    if ($vlc -eq 'Y' -or $vlc -eq 'y') {
        Write-Host "'VLC media player' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install VideoLAN.VLC -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install iTunes
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'iTunes' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $itunes = Read-Host
    if ($itunes -eq 'Y' -or $itunes -eq 'y') {
        Write-Host "'iTunes' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Apple.iTunes -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install OBS Studio
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'OBS Studio' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $obs = Read-Host
    if ($obs -eq 'Y' -or $obs -eq 'y') {
        Write-Host "'OBS Studio' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install OBSProject.OBSStudio -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    } else {
        Write-Host ""
    }

    Start-Sleep -Seconds 0.5
    Write-Host "Multimedia-Installation abgeschlossen!" -ForegroundColor Green
    Write-Host ""
    Start-Sleep -Seconds 1

    # --------------------------------------------Tools----------------------------------------------
    Write-Host $line -ForegroundColor Blue
    Write-Host "                                 Tools" -ForegroundColor Blue
    Write-Host $line -ForegroundColor Blue
    Write-Host ""
    Start-Sleep -Seconds 0.5
    
    # install 7zip
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'7zip' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $7zip = Read-Host
    if ($7zip -eq 'Y' -or $7zip -eq 'y') {
        Write-Host "'7zip' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install 7zip.7zip -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install TranslucentTB
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'TranslucentTB' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $translucent = Read-Host
    if ($translucent -eq 'Y' -or $translucent -eq 'y') {
        Write-Host "'TranslucentTB' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install CharlesMilette.TranslucentTB -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Microsoft Powertoys
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'Microsoft Powertoys' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $powertoys = Read-Host 
    if ($powertoys -eq 'Y' -or $powertoys -eq 'y') {
        Write-Host "'Microsoft Powertoys' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install Microsoft.PowerToys -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install QuickLook
    Write-Host "Möchtest du " -NoNewline
    Write-Host "'QuickLook' " -ForegroundColor Yellow -NoNewline
    Write-Host "installieren? (Y/N)" -NoNewline
    $quicklook = Read-Host
    if ($quicklook -eq 'Y' -or $quicklook -eq 'y') {
        Write-Host "'QuickLook' " -ForegroundColor Yellow -NoNewline
        Write-Host "wird installiert..."
        winget install QL-Win.QuickLook -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    } else {
        Write-Host ""
    }

    Start-Sleep -Seconds 0.5
    Write-Host "Tools-Installation abgeschlossen!" -ForegroundColor Green
    Write-Host ""
    Start-Sleep -Seconds 1
    Write-Host $line -ForegroundColor Blue
    Write-Host "Installationen der Apps wurden abgschlossen!" -ForegroundColor Green
    Write-Host ""

} else {
    # InstallationsAbbruch
    Write-Host "Die Installation wurde abgebrochen."
}