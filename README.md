This script is primarily intended to be used on a remote desktop gateway running windows firewall.
It takes the json file provided by Microsoft at: https://www.microsoft.com/en-us/download/details.aspx?id=56519 
(it will need to be stored locally at the $path variable and renamed to match.)

Iterating through this list it will pull all the subnets that belong to a particular service and create and add a new firewall
rule for the service.

Author: Matt Wyatt
Co-Author: Matt Hann

Credits: Big shoutout to Matt Hann who wrote the original script that dealt with the XML file format, and the help in converting this to 
the new format.

Instructions

1. Download the latest file version of the IP ranges on the above link. 
2. Place this file in a folder at the path C:\Scripts\ (Create it if it doesn't exist
3. Rename the file to have the name: AzurePublicIP.json

Alternatively, place it and name it whatever you wish but just alter the $path variable to match.
