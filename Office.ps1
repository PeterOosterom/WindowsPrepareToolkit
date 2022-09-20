
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
Get-AppxPackage | %{if ($_.name -match "MicrosoftTeams") {$_ | Remove-AppxPackage -AllUsers}}
# Gets the list of 3rd party bloatware
get-appxpackage | select name
# Remove 3rd party bloatware
Get-AppxPackage | %{if ($_.name -match "Fitbit.") {$_ | Remove-AppxPackage -AllUsers}}
Get-AppxPackage | %{if ($_.name -match "king.com") {$_ | Remove-AppxPackage -AllUsers}}
Get-AppxPackage | %{if ($_.name -match "Microsoft.zune") {$_ | Remove-AppxPackage -AllUsers}}
Get-AppxPackage | %{if ($_.name -match "microsoft.skypeapp") {$_ | Remove-AppxPackage -AllUsers}}
Get-AppxPackage | %{if ($_.name -match "NORDCURRENT.COOKINGFEVER") {$_ | Remove-AppxPackage -AllUsers}}
Get-AppxPackage | %{if ($_.name -match "Microsoft.MicrosoftSolitaireCollection") {$_ | Remove-AppxPackage -AllUsers}}
# Unpin Microsoft bs from start menu

(New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items()| foreach { ($_).Verbs() | ?{$_.Name.Replace('&', '') -match 'From "Start" UnPin|Unpin from Start'} | %{$_.DoIt()} }

 
