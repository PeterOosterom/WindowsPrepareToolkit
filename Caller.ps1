#Calls the scripts one after the other and restarts the pc afterwards
C:\Office.ps1
Start-Sleep -Seconds 5
C:\Software.ps1
Start-Sleep -Seconds 5
C:\start.ps1
Start-Sleep -Seconds 5
Restart-Computer
