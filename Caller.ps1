#Calls the scripts one after the other and restarts the pc afterwards
C:\Office.ps1
Start-Sleep -Seconds 5
C:\Start.ps1
Start-Sleep -Seconds 5
C:\Software.ps1
Start-Sleep -Seconds 5
C:\Power.ps1
Start-Sleep -Seconds 5
C:\Taskbar.ps1
Start-Sleep -Seconds 5
$input = Read-Host "Restart computer now [y/n]"
switch($input){
          y{Restart-computer -Force -Confirm:$false}
          n{exit}
    default{write-warning "Invalid Input"}
}
