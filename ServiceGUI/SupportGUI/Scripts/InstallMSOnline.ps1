# Sets Powershell execution policy to allow remote signed modules
Set-ExecutionPolicy RemoteSigned

# Installs the MSOnline Module
Install-Module -Name MSOnline

# Sets Powershell execution policy back to Windows default
Set-ExecutionPolicy AllSigned