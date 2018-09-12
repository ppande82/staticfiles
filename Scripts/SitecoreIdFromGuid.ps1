$inputGuid = Read-Host -Prompt "Enter the GUID value. It must be 32 chars"

if ($inputGuid.Length -eq 32)
{
    $firstPart = $inputGuid.Substring(0,8)
    $secondPart = $inputGuid.Substring(8,4)
    $thirdPart = $inputGuid.Substring(12,4)
    $fourthPart = $inputGuid.Substring(16,4)
    $fifthPart = $inputGuid.Substring(20,12)

    Write-Output "{$firstPart-$secondPart-$thirdPart-$fourthPart-$fifthPart}"
    #Write-Output $firstPart

}
else
{
    Write-Output "String is NOT 32 chars!"
}