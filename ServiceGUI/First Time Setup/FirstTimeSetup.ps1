# First time setup for custom module & GUI
# Specifies the module path and checks to see if it exists
$ModulePath = "C:\Program Files\WindowsPowerShell\Modules\OzdocSupport\Ozdocsupport.psm1"
$MPath = Test-Path -PathType Container "$ModulePath"

# Gets the current users desktop location
$dir = [Environment]::GetFolderPath("Desktop")


# Copies required module files as long as they don't already exist
if ($MPath -eq $false) {
    $ModuleSuccess = $true
    New-Item -ItemType Directory -Path "C:\Program Files\WindowsPowershell\Modules\OzdocSupport"
    Copy-Item -Path .\OzdocSupport.psm1 -Destination "C:\Program Files\WindowsPowerShell\Modules\OzdocSupport\" -Recurse -Force
}

# Specifies the scripts path and checks to see if it exists
$ScriptPath = "%UserProfile%\Desktop\OzdocSupport"
$SPath = Test-Path -PathType Container "$ScriptPath"

# Copies required script files as long as they don't already exist
if ($SPath -eq $false) {
    $ScriptSuccess = $true
    New-Item -ItemType Directory -Path "$dir\OzdocSupport"
    Copy-Item -path .\SupportGUI -Destination "$dir\OzdocSupport" -Recurse -Force
}

# Show success/failure
if ($ModuleSuccess -and $ScriptSuccess -eq $true) {
    Read-Host -Prompt "Install complete, press enter to close this window"
}