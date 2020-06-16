This script is primarily intended to be used on a remote desktop gateway running windows firewall.
It takes the json file provided by Microsoft at: https://www.microsoft.com/en-us/download/details.aspx?id=56519 
(it will need to be stored locally at the $path variable and renamed to match.)

Iterating through this list it will pull all the subnets that belong to a particular service and create and add a new firewall
rule for the service.

Author: Matt Wyatt
Co-Author: Matt Hann

Credits: Big shoutout to Matt Hann who wrote the script that dealt with the XML file format, and the help in converting this to the
new format
