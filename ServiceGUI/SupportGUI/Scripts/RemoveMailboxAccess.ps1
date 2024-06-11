# Requires ExchangeOnline v3 module. Run the below command to install the module.
# Install-Module ExchangeOnlineManagement

# Import the required module
Import-Module ExchangeOnlineManagement

# Connect to Exchange Online with MFA
Connect-ExchangeOnline

# Prompt for user that is having access revoked
$user = Read-Host -Prompt "User To Have Access Revoked"

# Prompt for mailbox have access revoked
$mailbox = Read-Host -Prompt "Mailbox To Revoke Access From"

# Remove mailbox access
Remove-MailboxPermission -Identity "$mailbox" -User "$user"