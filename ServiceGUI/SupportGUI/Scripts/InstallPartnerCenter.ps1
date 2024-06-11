# Sets Powershell execution policy to allow remote signed modules
Set-ExecutionPolicy RemoteSigned

# Installs the PartnerCenter Module
Install-Module -Name PartnerCenter

# Sets Powershell execution policy back to Windows default
Set-ExecutionPolicy AllSigned