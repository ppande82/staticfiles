$folderPath = Read-Host -Prompt "Enter Full Path For Serialization Configs To Disable"

Get-ChildItem -Path $folderPath\*serialization.config | Rename-Item -NewName {$_.Name -replace '\.config', '.config.disabled'}