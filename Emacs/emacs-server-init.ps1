# Path to startup file
$startup_file = "$([Environment]::GetFolderPath('Startup'))\StartEmacsServer.bat"

# Introduce variable HOME:
# 1. for simplicity
# 2. runemacs.exe expects it to be
#
# %APPDATA% is chosen because runemacs.exe operates there
#	https://www.gnu.org/software/emacs/manual/html_node/emacs/Find-Init.html#Find-Init
#	https://www.gnu.org/software/emacs/manual/html_node/emacs/General-Variables.html#General-Variables
New-Item $startup_file -type file
Set-Content -Path $startup_file -Value "set HOME=%APPDATA%"

# Clean previous server file info first
Add-Content -Path $startup_file -Value "del /Q ""%HOME%/.emacs.d/server/*"""
Add-Content -Path $startup_file -Value "runemacs.exe --daemon"
