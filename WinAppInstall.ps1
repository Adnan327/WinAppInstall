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
    $chrome = Read-Host "Möchtest du Google Chrome installieren? (Y/N)"
    if ($chrome -eq 'Y' -or $chrome -eq 'y') {
        Write-Host "Google Chrome wird installiert..."
        winget install Google.Chrome -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Firefox
    $firefox = Read-Host "Möchtest du Firefox installieren? (Y/N)"
    if ($firefox -eq 'Y' -or $firefox -eq 'y') {
        Write-Host "Fireox wird installiert..."
        winget install Mozilla.Firefox -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Brave
    $brave = Read-Host "Möchtest du Brave installieren? (Y/N)"
    if ($brave -eq 'Y' -or $brave -eq 'y') {
        Write-Host "Brave wird installiert..."
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

    # install VSCode
    $vscode = Read-Host "Möchtest du VSCode installieren? (Y/N)"
    if ($vscode -eq 'Y' -or $vscode -eq 'y') {
        Write-Host "VSCode wird installiert..."
        winget install Microsoft.VisualStudioCode -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Git
    $git = Read-Host "Möchtest du Git installieren? (Y/N)"
    if ($git -eq 'Y' -or $git -eq 'y') {   
        Write-Host "Git wird installiert..."
        winget install Git.Git -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Oracle.jdk.22
    $jdk22 = Read-Host "Möchtest du Oracle.jdk.22 installieren? (Y/N)"
    if ($jdk22 -eq 'Y' -or $jdk22 -eq 'y') { 
        Write-Host "Oracle.jdk.22 wird installiert..."
        winget install Oracle.JDK.22 -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }
    # install Powershell
    $powershell = Read-Host "Möchtest du Powershell installieren? (Y/N)"
    if ($powershell -eq 'Y' -or $powershell -eq 'y') { 
        Write-Host "Powershell wird installiert..."
        winget install Microsoft.PowerShell -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Windows-Terminal
    $winterminal = Read-Host "Möchtest du Windows-Terminal installieren? (Y/N)"
    if ($winterminal -eq 'Y' -or $winterminal -eq 'y') { 
        Write-Host "Windows-Terminal wird installiert..."
        winget install Microsoft.WindowsTerminal -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install VirtualBox
    $vb = Read-Host "Möchtest du VirtualBox installieren? (Y/N)"
    if ($vb -eq 'Y' -or $vb -eq 'y') { 
        Write-Host "VirtualBox wird installiert..."
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
    $office365 = Read-Host "Möchtest du Office365 installieren? (Y/N)"
    if ($office365 -eq 'Y' -or $office365 -eq 'y') { 
        Write-Host "Office365 wird installiert..."
        winget install Microsoft.Office -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install LibreOffice
    $libre = Read-Host "Möchtest du LibreOffice installieren? (Y/N)"
    if ($libre -eq 'Y' -or $libre -eq 'y') { 
        Write-Host "LibreOffice wird installiert..."
        winget install TheDocumentFoundation.LibreOffice -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Notepad++
    $notepadqq = Read-Host "Möchtest du Notepad++ installieren? (Y/N)"
    if ($notepadqq -eq 'Y' -or $notepadqq -eq 'y') {   
        Write-Host "Notepad++ wird installiert..."
        winget install Notepad++.Notepad++ -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Obsidian
    $obsidian = Read-Host "Möchtest du Obsidian installieren? (Y/N)"
    if ($obsidian -eq 'Y' -or $obsidian -eq 'y') { 
        Write-Host "Obsidian wird installiert..."
        winget install Obsidian.Obsidian -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Anki
    $anki = Read-Host "Möchtest du Anki installieren? (Y/N)"
    if ($anki -eq 'Y' -or $anki -eq 'y') { 
        Write-Host "Anki wird installiert..."
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
    $discord = Read-Host "Möchtest du Discord installieren? (Y/N)"
    if ($discord -eq 'Y' -or $discord -eq 'y') { 
        Write-Host "Discord wird installiert..."
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
    $vlc = Read-Host "Möchtest du VLC media player installieren? (Y/N)"
    if ($vlc -eq 'Y' -or $vlc -eq 'y') {
        Write-Host "VLC media player wird installiert..."
        winget install VideoLAN.VLC -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install iTunes
    $itunes = Read-Host "Möchtest du iTunes installieren? (Y/N)"
    if ($itunes -eq 'Y' -or $itunes -eq 'y') {
        Write-Host "iTunes wird installiert..."
        winget install Apple.iTunes -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install OBS Studio
    $obs = Read-Host "Möchtest du OBS Studio installieren? (Y/N)"
    if ($obs -eq 'Y' -or $obs -eq 'y') {
        Write-Host "OBS Studio wird installiert..."
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
    $7zip = Read-Host "Möchtest du 7zip installieren? (Y/N)"
    if ($7zip -eq 'Y' -or $7zip -eq 'y') {
        Write-Host "7zip wird installiert..."
        winget install 7zip.7zip -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install TranslucentTB
    $translucent = Read-Host "Möchtest du TranslucentTB installieren? (Y/N)"
    if ($translucent -eq 'Y' -or $translucent -eq 'y') {
        Write-Host "TranslucentTB wird installiert..."
        winget install CharlesMilette.TranslucentTB -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install Microsoft Powertoys
    $powertoys = Read-Host "Möchtest du Microsoft Powertoys installieren? (Y/N)"
    if ($powertoys -eq 'Y' -or $powertoys -eq 'y') {
        Write-Host "Microsoft Powertoys wird installiert..."
        winget install Microsoft.PowerToys -h --accept-package-agreements --accept-source-agreements
        Write-Host ""
    }

    # install QuickLook
    $quicklook = Read-Host "Möchtest du QuickLook installieren? (Y/N)"
    if ($quicklook -eq 'Y' -or $quicklook -eq 'y') {
        Write-Host "QuickLook wird installiert..."
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