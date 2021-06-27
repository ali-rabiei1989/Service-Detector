$servers = get-content  ".\machines.txt"
foreach($server in $servers){
$service = get-service -ComputerName $server w3svc -ErrorAction Ignore
if($service)
{
Write-Host "IIS installed on $server"
} 
else {
Write-Host "IIS is not installed on $server"
}
}
