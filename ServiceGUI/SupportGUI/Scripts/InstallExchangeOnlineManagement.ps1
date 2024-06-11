# Sets Powershell execution policy to allow remote signed modules
Set-ExecutionPolicy RemoteSigned

# Installs the ExchangeOnlineManagement Module
Install-Module -Name ExchangeOnlineManagement

# Sets Powershell execution policy back to Windows default
Set-ExecutionPolicy AllSigned