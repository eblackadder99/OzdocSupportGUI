# Requires ExchangeOnline v3 module. Run the below command to install the module.
# Install-Module ExchangeOnlineManagement

# Import the required module
Import-Module ExchangeOnlineManagement

# Connect to Exchange Online with MFA
Connect-ExchangeOnline

# Prompt for user that is being given access
$user = Read-Host -Prompt "User Being Given Access"

# Prompt for mailbox to be given access To
$calendar = Read-Host -Prompt "Calendar To Give Access To"

# Assign mailbox access
# To assign access only through OWA set -Automapping to $false
Add-MailboxFolderPermission -Identity "$calendar":\calendar -User "$user" -AccessRights PublishingEditor -InheritanceType All