Set-ExecutionPolicy Unrestricted
$name = Read-Host'Enter the computer name: '
Rename-Computer -NewName $name
$domain = Read-Host'Enter the domain: '
Add-Computer -DomainName $domain -Restart