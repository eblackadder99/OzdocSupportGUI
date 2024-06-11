# Requires ExchangeOnline v3 module. Run the below command to install the module.
# Install-Module ExchangeOnlineManagement

# Import the required module
Import-Module ExchangeOnlineManagement

# Connect to Exchange Online with MFA
Connect-ExchangeOnline

# Prompt for user that is having access revoked
$user = Read-Host -Prompt "User To Have Access Revoked"

# Prompt for mailbox to revoke access from
$calendar = Read-Host -Prompt "Calendar To Revoke Access From"

# Remove mailbox access
Remove-MailboxFolderPermission -Identity "$calendar":\calendar -User "$user"