# Get the list of Microsoft bloatware
Get-AppxProvisionedPackage -online | select packagename
# Remove Microsoft bloatware
Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Office.Desktop") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Office.OneNote") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Xbox") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.SkypeApp") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Zune") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.MicrosoftOffice") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "LinkedInforWindows") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.LinkedInforWindows") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "MicrosoftTeams") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
# Gets the list of 3rd party bloatware
get-appxpackage | select name
# Remove 3rd party bloatware
Get-AppxPackage | %{if ($_.name -match "Fitbit.") {$_ | Remove-AppxPackage -AllUsers}}
Get-AppxPackage | %{if ($_.name -match "king.com") {$_ | Remove-AppxPackage -AllUsers}}
Get-AppxPackage | %{if ($_.name -match "Microsoft.zune") {$_ | Remove-AppxPackage -AllUsers}}
Get-AppxPackage | %{if ($_.name -match "microsoft.skypeapp") {$_ | Remove-AppxPackage -AllUsers}}
Get-AppxPackage | %{if ($_.name -match "NORDCURRENT.COOKINGFEVER") {$_ | Remove-AppxPackage -AllUsers}}
Get-AppxPackage | %{if ($_.name -match "Microsoft.MicrosoftSolitaireCollection") {$_ | Remove-AppxPackage -AllUsers}}

# Removes Task View from the Taskbar
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name 'ShowTaskViewButton' -Type 'DWord' -Value 0
 
# Removes Widgets from the Taskbar
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name 'TaskbarDa' -Type 'DWord' -Value 0
 
# Removes Chat from the Taskbar
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name 'TaskbarMn' -Type 'DWord' -Value 0

# Default StartMenu alignment 0=Left
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name 'TaskbarAl' -Type 'DWord' -Value 0
 
# Removes search from the Taskbar
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name 'SearchboxTaskbarMode' -Type 'DWord' -Value 0
 
# Copies the downloaded start.bin to the correct folder
Copy-Item "c:\start.bin" "$($env:LOCALAPPDATA)\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState\start.bin" -force

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
# Install software
choco install googlechrome -fy
choco install firefox -fy
choco install winrar -fy
choco install adobereader -fy

# Changes the power settings to turn off monitor after 5 hours
powercfg -change -monitor-timeout-dc 300
powercfg -change -monitor-timeout-ac 300
powercfg -change -standby-timeout-dc 0
powercfg -change -standby-timeout-ac 0

$input = Read-Host "Restart computer now [y/n]"
switch($input){
          y{Restart-computer -Force -Confirm:$false}
          n{exit}
    default{write-warning "Invalid Input"}
}
