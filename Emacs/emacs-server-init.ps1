# Path to startup file
$startup_file = "$([Environment]::GetFolderPath('Startup'))\StartEmacsServer.bat"

# Clean previous server file info first
New-Item $startup_file -type file
Set-Content -Path $startup_file -Value "set HOME=%HomeDrive%%HomePath%"
Add-Content -Path $startup_file -Value "del /Q ""%HOME%/.emacs.d/server/*"""
Add-Content -Path $startup_file -Value "runemacs.exe --daemon"
