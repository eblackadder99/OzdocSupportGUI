# Resets specific network adaptor

# Prompts for adaptor to reset
$adaptor = Read-Host -Prompt "Name of Network Adaptor to Reset"

# Restarts specified adaptor
Restart-NetAdapter -Name "$adaptor"