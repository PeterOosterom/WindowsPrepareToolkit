22h2 update broke it

# WindowsPrepareToolkit
A custom toolkit to remove bloatware and prepare a fresh windows 11 Pro install for deployment

# Working
Removes Microsoft bloatware

Remove search etc from taskbar (needs a reboot to work)

Removes pinned items from start menu by replacing start.bin

Chocolatey script to install software

Changes the power settings to turn off monitor after 5 hours

It asks for a reboot afterwards


# Usage
Download .zip and extract contents to C:/

Run Toolkit.bat


# Sources
https://chocolatey.org/

# Customizing
Use to see all the windows store apps currently installed

Get-AppxPackage | Select Name,

To delete the package add the following to Office.ps1 change yourpackageofchoice to the package you want to delete:

Get-AppxPackage | %{if ($_.name -match "Yourpackageofchoice.") {$_ | Remove-AppxPackage -AllUsers}}


By default it installs Adobe Reader, firefox, chrome and winrar. 

This can be changed by editing Software.ps1 Check https://community.chocolatey.org/packages


# Warning

Don't use this on an old install. 


I'm not responsible for broken installs.

