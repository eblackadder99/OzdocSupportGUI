# Requires ExchangeOnline Module. Run the below command to install.
# Install-Module ExchangeOnlineMangement

# Import the required module
Import-Module ExchangeOnlineManagement

# Connect to Exchange Online with MFA
Connect-ExchangeOnline

# Prompt for mailbox to check
$mailbox = Read-Host -Prompt "Mailbox To Be Checked"

# Get mailbox permissions and export to the same directory this script was run from
Get-mailboxPermission -Identity $mailbox | Where-Object { ($_.IsInherited -eq $false)}