@echo off
powershell.exe -Command "Start-Process -Verb RunAs powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "C:\Caller.ps1\"'
This is a txt
