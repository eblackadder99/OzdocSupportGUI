# Releases IP for all adaptors
ipconfig /release

# Waits 10 seconds for release
Start-Sleep -Seconds 10

# Renews IP for all adaptors
ipconfig /renew