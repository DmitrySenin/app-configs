rem this is for emacs.exe
mklink /j "%userprofile%/.emacs.d" ".emacs.d"
rem this is for emacsclientw.exe
mklink /j "%appdata%/.emacs.d" ".emacs.d"

powershell .\emacs-server-init.ps1
