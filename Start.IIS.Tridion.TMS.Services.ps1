# Start.IIS.Tridion.TMS.Services.ps1

start-service -displayname "IIS Admin Service" 
start-service -displayname "World Wide Web Publishing Service"

start-service -displayname "Tridion Content Distributor Transport Service" 
start-service -displayname "Tridion Content Manager Business Connector"
start-service -displayname "Tridion Content Manager Publisher"
start-service -displayname "Tridion Content Manager Search Host"
start-service -displayname "Tridion Content Manager Search Indexer"
start-service -displayname "Tridion Content Manager Service Host"
start-service -displayname "Tridion Content Manager Workflow Agent"
start-service -displayname "Tridion Monitoring Service"

start-service -displayname "Tridion Translation Manager"

$comObj = new-object -comobject comadmin.comadmincatalog
$comObj.connect($env:COMPUTERNAME)
$comObj.startapplication("SDL Tridion Content Manager")
