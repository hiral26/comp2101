get-CimInstance -className win32_computersystem

get-CimInstance -className win32_processor | select-object NumberOfCores,L1CacheSize,L2CacheSize,L3CacheSize,CurrentClockSpeed

get-CimInstance -className win32_physicalmemory |select-object Manufacturer,Description,BankLabel,Capacity

foreach ($disk in $diskdrives){
$partitions = $disk|get-cimassociatedinstance -resultclassname CIM_diskpartition
foreach ($partition in $partitions){
$logicaldisks = $partition | get-cimassociatedinstance -resultclassname CIM_logicaldisk
foreach ($logicaldisk in $logicaldisks) {
new-object -typename psobject -property @{
Manufacturer=$disk.Manufacturer
Location= $partition.deviceid
Drive=$logicaldisk.deviceid
"Size(GB)" =$logicaldisk.size / 1gb -as [int] }}}}

get-ciminstance win32_networkadapterconfiguration | where ipenabled -eq True | select-object index,Description,ipaddress,MACAddress,DNSDomain,DNSServer | format-table


get-CimInstance -className win32_videocontroller| select-object Manufacturer,Description,VideoModeDescription