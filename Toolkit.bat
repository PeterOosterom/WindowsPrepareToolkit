#Starts a priveleged ps shell and changes the execution policy
@echo off
powershell.exe -Command "Start-Process -Verb RunAs powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "C:\Caller.ps1\"'

