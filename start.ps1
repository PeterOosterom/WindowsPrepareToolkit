#copies the downloaded start.bin to the correct folder
Copy-Item "c:\start.bin" "$($env:LOCALAPPDATA)\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState\start.bin" -force
