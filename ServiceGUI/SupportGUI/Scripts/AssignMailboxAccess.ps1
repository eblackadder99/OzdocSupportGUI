# Requires ExchangeOnline module. Run the below command to install the module.
# Install-Module ExchangeOnlineManagement

# Import the required module
Import-Module ExchangeOnlineManagement

# Connect to Exchange Online with MFA
Connect-ExchangeOnline

# Prompt for user that is being given access
$user = Read-Host -Prompt "User Being Given Access"

# Prompt for mailbox to be given access To
$mailbox = Read-Host -Prompt "Mailbox To Give Access To"

# Assign mailbox access
# To assign access only through OWA set -Automapping to $false
Add-MailboxPermission -Identity "$mailbox" -User "$user" -AccessRights FullAccess -InheritanceType All -Automapping $true