# Get all printers
$printers = Get-Printer

# Throw error if no printers found
if ($printers.Count -eq 0) {throw "No Printers Found"}

# Finds print jobs on every printer and clears them
foreach ($printer in $printers) {
        $printjobs = Get-PrintJob -PrinterObject $printer
        foreach ($printjob in $printjobs) {
                Remove-PrintJob -InputObject $printjob
        }
}

# Stop the Print Spooler service
Stop-Service -Name Spooler

# Waits 10 seconds for service to stop
Start-Sleep 10

# Starts the Print Spooler service
Start-Service -Name Spooler

# Waits 5 seconds for service to start
Start-Sleep 5