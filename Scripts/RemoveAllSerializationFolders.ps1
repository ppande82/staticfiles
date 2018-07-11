$codePath = Read-Host -Prompt "Enter Code Path"

# We're looking for all the serialization folders src and minimum 3 levels deep.
# Then remove all the 'serialization' folders.
Get-ChildItem -Path $codePath\src\*\*\* -Recurse -Filter "serialization" -Directory | Remove-Item -Recurse