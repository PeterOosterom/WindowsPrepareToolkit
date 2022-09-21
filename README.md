# WindowsPrepareToolkit
A custom toolkit to remove bloatware and prepare a fresh windows 11 Pro install for deployment

It reboots the machine when done

# Working
Removes Microsoft bloatware

Chocolatey script to install software

Removes pinned items from start menu by replacing start.bin

Changes the power settings to turn off monitor after 5 hours
# To-do
Remove search etc from taskbar

# Usage
Download .zip and extract contents to C:/

https://www.youtube.com/watch?v=tipWCjapEXA&t=1s

Run Toolkit.bat

# For testing purposes use the following script to reinstall bloatware:
https://go.microsoft.com/fwlink/?LinkId=619547

# Sources
https://chocolatey.org/

# Customizing
Use to see all the windows store apps currently installed

Get-AppxPackage | Select Name,

To delete the package add the following to Office.ps1 change yourpackageofchoice to the package you want to delete:

Get-AppxPackage | %{if ($_.name -match "Yourpackageofchoice.") {$_ | Remove-AppxPackage -AllUsers}}


By default it installs Adobe Reader, firefox, chrome and winrar. This can be changed by editing Software.ps1. Check https://community.chocolatey.org/packages



