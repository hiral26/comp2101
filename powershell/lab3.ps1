get-ciminstance win32_networkadapterconfiguration | where ipenabled -eq True | select-object index,Description,ipaddress,MACAddress,DNSDomain,DNSServer | format-table