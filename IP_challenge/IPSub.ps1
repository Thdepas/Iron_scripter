#https://quickbytesstuff.blogspot.com/2015/10/powershell-get-ip-address-and-subnet.html

$nic_configuration = gwmi -computer .  -class "win32_networkadapterconfiguration" | Where-Object {$_.defaultIPGateway -ne $null}
$IP = $nic_configuration.ipaddress
write-output " IP Address : $IP"

$MAC_Address = $nic_configuration.MACAddress
write-output " MAC Address :  $MAC_Address"

$SubnetMask = $nic_configuration.ipsubnet

switch ($SubnetMask) {
255.255.255.255   {" Subnet mask is: 255.255.255.255 or /32 "}
255.255.255.254   {" Subnet mask is: 255.255.255.254  or   /31 "}
255.255.255.252   {" Subnet mask is:  255.255.255.252 or   /30 "}
255.255.255.248   {" Subnet mask is: 255.255.255.248 or  /29 "}
255.255.255.240   {" Subnet mask is:   255.255.255.240   or   /28"}
255.255.255.224   {" Subnet mask is:   255.255.255.224   or   /27"}
255.255.255.192   {" Subnet mask is:   255.255.255.192   or   /26"}
255.255.255.128   {" Subnet mask is:   255.255.255.128   or   /25"}
255.255.255.0     {" Subnet mask is:   255.255.255.0     or   /24"}
255.255.254.0     {" Subnet mask is:   255.255.254.0     or   /23"}
255.255.252.0     {" Subnet mask is:   255.255.252.0     or   /22"}
255.255.248.0     {" Subnet mask is:   255.255.248.0     or   /21"}
255.255.240.0     {" Subnet mask is:   255.255.240.0     or   /20"}
255.255.224.0     {" Subnet mask is:   255.255.224.0     or   /19"}
255.255.192.0     {" Subnet mask is:   255.255.192.0     or   /18"}
255.255.128.0     {" Subnet mask is:  255.255.128.0      or   /17"}
255.255.0.0       {" Subnet mask is:   255.255.0.0       or   /16"}
255.254.0.0       {" Subnet mask is:   255.254.0.0       or   /15"}
255.252.0.0       {" Subnet mask is:   255.252.0.0       or   /14"}
255.248.0.0       {" Subnet mask is:   255.248.0.0       or   /13"}
255.240.0.0       {" Subnet mask is:   255.240.0.0       or   /12"}
255.224.0.0       {" Subnet mask is:   255.224.0.0       or   /11"}
255.192.0.0       {" Subnet mask is:   255.192.0.0       or   /10"}
255.128.0.0       {" Subnet mask is:   255.128.0.0       or   /9"}
255.0.0.0         {" Subnet mask is:   255.0.0.0         or   /8 "}
254.0.0.0         {" Subnet mask is:   254.0.0.0         or   /7"}
252.0.0.0         {" Subnet mask is:   252.0.0.0         or   /6"}
248.0.0.0         {" Subnet mask is:   248.0.0.0         or   /5"}
240.0.0.0         {" Subnet mask is:  240.0.0.0          or   /4"}
224.0.0.0         {" Subnet mask is:   224.0.0.0         or   /3"}
192.0.0.0         {" Subnet mask is:   192.0.0.0         or   /2"}
}