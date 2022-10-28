#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
#Install software
choco install googlechrome -fy
choco install firefox -fy
choco install winrar -fy
choco install adobereader -fy
choco install teamviewer-qs -fy
choco install jre8 -fy
