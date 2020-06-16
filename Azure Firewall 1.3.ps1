#Author: Matt Wyatt
#Co-Author: Matt Hann
#Description: Takes the latest Json file which is placed at $path and adds RDP over 3389 for all services into the local windows firewall.

$path = "C:\Scripts\AzurePublicIP.Json"

#Imports the json file which will have to be manually downloaded and placed at the following location and name
$import = Get-Content $path | ConvertFrom-Json

#Grabs all the old rules
$oldRules = Get-NetFirewallRule -Group "Azure RDP*"

#Iterates through the json file, particularly 
$firewallRule = foreach($service in $import.values){
                    if($service.properties.region -eq ""){
                        $ServiceName = $service.name
                        $ServiceIPs = $service.properties.addressPrefixes
                        New-NetFirewallRule -DisplayName "Azure RDP $ServiceName" -Direction Outbound -Protocol TCP -RemotePort 3389 -Group "Azure RDP $((get-date -Format d).ToString())" -Action Allow
                        Set-NetFirewallRule -DisplayName "Azure RDP $ServiceName" -RemoteAddress $ServiceIPs -Verbose
                    }
                }

foreach($rule in $oldRules){
    Remove-NetFirewallRule $rule.Name
    }