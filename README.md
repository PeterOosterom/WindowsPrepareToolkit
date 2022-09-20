# WindowsPrepareToolkit
A custom toolkit to remove bloatware and prepare a fresh windows 11 Pro install for deployment

By default it installs Adobe Reader, firefox, chrome and winrar. This can be changed by editing Software.ps1. Check https://community.chocolatey.org/packages for a list of packages
# Working
Removes Microsoft bloatware

Chocolatey script to install software
# To-do
Set power settings

Remove bs from start menu
# Usage
Download .zip and extract contents to C:/

Run Toolkit.bat

# For testing purposes use the following script to reinstall bloatware:
https://go.microsoft.com/fwlink/?LinkId=619547

# Sources
https://chocolatey.org/

# Customizing
Use to see all the windows store apps currently installed

Get-AppxPackage | Select Name, PackageFullName
