$folderPath = Read-Host -Prompt "Enter Full Path For Configs To Disable"

Get-ChildItem -Path $folderPath\*.config | Rename-Item -NewName {$_.Name -replace '\.config', '.config.disabled'}