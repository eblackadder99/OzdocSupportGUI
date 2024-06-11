# Gets specific customer tenant ID
Function Get-CustomerID {
 
    $name = Read-Host "Type part of the organisations name"
    $Customers = @()
    $Customers = @(Get-MsolPartnerContract | Where-Object {$_.Name -match $name})
 
    if($Customers.Count -gt 1){
 
        Write-Host "More than 1 customer found, rerun the function:"
        Write-Host " "
 
        ForEach($Customer in $Customers){
 
            Write-Host $Customer.Name
        }
    }
 
    if($Customers.count -eq 0){
     
        Write-Host "No customers found, rerun the function"
    }
 
    if($Customers.Count -eq 1){
 
    $global:cid = $Customers.tenantid
     
    Write-Host "$($Customers.name) selected. User the -tenantid `$cid parameter to run MSOL commands for this customer."
    }
 
}

# Gets login details for current user
Function Get-Login {
    $UserName = Read-Host -Prompt "Enter Email Address (Credentials are only saved in this session)"
    $Cred = Get-Credential -Credential AZUREAD\$Username
    }

# Checks for existing module and places the file there if it doesn't exist
Function Get-ModuleStatus {
    $ModulePath = "C:\Program Files\WindowsPowerShell\Modules\Ozdocsupport.psm1"
    if (!(Test-Path $ModulePath)) {
        Copy-Item -Path .\OzdocSupport.ps1 -Destination "C:\Program Files\WindowsPowerShell\Modules"
    }
}