# Download  and Install Firefox
$source = 'https://download.mozilla.org/?product=firefox-latest&os=win64&lang=de'
Invoke-WebRequest $source -OutFile '.\Firefox.exe'
.\Firefox.exe

# Download  and Install Thunderbird
$source = 'https://download.mozilla.org/?product=thunderbird-latest-SSL&os=win64&lang=de'
Invoke-WebRequest $source -OutFile '.\Thunderbird.exe'
.\Thunderbird.exe

# Download and Install VLC
$source = 'https://get.videolan.org/vlc/3.0.16/win64/vlc-3.0.16-win64.exe'
Invoke-WebRequest $source -OutFile '.\VLC.exe'
.\VLC.exe

# Download and Install LibreOffice
$source = 'https://de.libreoffice.org/donate/dl/win-x86_64/7.1.4/de/LibreOffice_7.1.4_Win_x64.msi'
$arguments = "/i `"$source`" /quiet"
Start-Process msiexec.exe -ArgumentList $arguments -Wait

ls

# Clear Download Folder
Write-Host "Press any key to clear the Download Folder..."
$x = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
rm .\Firefox.exe
rm .\Thunderbird.exe
rm .\VLC.exe
rm .\LibreOffice.msi
