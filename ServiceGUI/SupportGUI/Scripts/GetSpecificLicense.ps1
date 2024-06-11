# Connect to MSOnline
Connect-MsolService

# Get a list of all available licenses in the tenant
Get-MsolAccountSku

# Prompt for license to check
$license = Read-Host -Prompt "Enter the license to check from the list above"
$export = Read-Host -Prompt "Export to Excel spreadsheet? (y/n)"
$exportArray += "y","yes"

if ($export -eq $exportArray){
    Get-MsolUser | Where-Object {($_.licenses).AccountSkuID -match "$license"} | Out-File C:\Users\%user%\Desktop\LicensedUsers.csv
}else {
    Get-MsolUser | Where-Object {($_.licenses).AccountSkuID -match "$license"}
}