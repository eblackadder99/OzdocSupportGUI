# Script requires MSOnline module
# Install-Module MSOnline

# Import the required module
Import-Module MSOnline

# Connect to MS Online with MFA
Connect-MsolService

# Get all licensed users
Get-MsolUser -All | Where-Object { $_.isLicensed -eq $true } | Select-Object UserPrincipalName, DisplayName