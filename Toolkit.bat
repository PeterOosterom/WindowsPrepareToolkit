@echo off
powershell.exe -Command "Start-Process -Verb RunAs powershell -ArgumentList '-NoProfile -NoExit -ExecutionPolicy Bypass -File "C:\Office.ps1\"'
pause
