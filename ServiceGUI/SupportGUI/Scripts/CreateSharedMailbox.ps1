# Requires ExchangeOnline v3 module. Run the below command to install the module.
# Install-Module ExchangeOnlineManagement

# Import the required module
Import-Module ExchangeOnlineManagement

# Connect to Exchange Online with MFA
Connect-ExchangeOnline

# Prompt for shared mailbox name
$sharedMailboxName = Read-Host -Prompt "What will the mailbox be called"

# Prompt for shared mailbox address
$sharedMailboxAddress = Read-Host -Prompt "What will the email address for this mailbox be?"

# Create the shared mailbox
New-Mailbox -Shared -Name "$sharedMailboxName" -PrimarySMTPAddress "$sharedMailboxAddress"