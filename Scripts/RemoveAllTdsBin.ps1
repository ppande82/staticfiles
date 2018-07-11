# This is the root of the folder where files will be deleted
$rootFolder = "C:\Code\Meritage";

# We're looking for all Folders that have *.TDS.*
Get-ChildItem -Path $rootFolder -Recurse -Filter "*.tds.*" -Directory | 
ForEach-Object -Process { 
    
    # Go inside each *.TDS.* folder and Retreive 'Bin' folder to delete
    Get-ChildItem $_.FullName -Filter "bin" | Remove-Item -Recurse
} 