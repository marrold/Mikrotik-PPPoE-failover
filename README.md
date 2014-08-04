Mikrotik-PPPoE-failover
=======================

This project is a failover script for PPPoE based connections on Mikrotik devices. It senses degraded internet service, and adjusts the routes accordingly.

Instructions for use
--------------------

1) Run the script 'PPPoE_script_version.rsc' in order to populate the function that will build the failover scripts.
2) Run the function-
	
$InstallFailover WAN="[PPPoE interface name]" IP1=[IP to Ping] IP2=[IP to Ping]

E.G $InstallFailover WAN="WAN1 - Broadband" IP1=8.8.8.8 IP2=8.8.4.4  
