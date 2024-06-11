# Finds all network shares on device
Get-WmiObject win32_share | Where-Object {$_.name -Notlike "*$"
}