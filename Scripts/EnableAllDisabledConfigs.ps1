$folderPath = Read-Host -Prompt "Enter Full Path For Configs To Enable"

Get-ChildItem -Path $folderPath\*.disabled | Rename-Item -NewName {$_.Name -replace '\.disabled', ''}