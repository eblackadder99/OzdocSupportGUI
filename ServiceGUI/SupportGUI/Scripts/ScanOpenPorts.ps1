# Prompt for subnet to check
$network = Read-Host -Prompt "Subnet to search (e.g. 192.168.1)"

# Prompt for port to check
$port = Read-Host -Prompt "What Port to check"

# Prompt for range to check
$range = Read-Host -Prompt "Range to check (e.g. 1..254) (Use .. between the numbers)"

# If error continue
$ErrorActionPreference= "silentlycontinue"

# Port check
foreach($add in $range) {
	$ip = "{0}.{1}" -F $network,$add
	write-progress "Scanning IP $ip" -PercentComplete (($add/$range.Count)*100)
	if (Test-Connection -BufferSize 32 -Count 1 -quiet -ComputerName $ip) {
		$socket = new-object System.Net.Sockets.TcpClient($ip, $port)
		if ($socket.Connected) {
			write-output "TCP port $port at $ip is open"
			$socket.Close()
		} else {
			write-output "TCP port $port at $ip is not open"
		}
	}
}