# Stop.IIS.Tridion.TMS.Services.ps1

stop-service -displayname "IIS Admin Service" -force
stop-service -displayname "World Wide Web Publishing Service"

stop-service -displayname "Tridion Content Distributor Transport Service" -force
stop-service -displayname "Tridion Content Manager Business Connector"
stop-service -displayname "Tridion Content Manager Publisher"
stop-service -displayname "Tridion Content Manager Search Host"
stop-service -displayname "Tridion Content Manager Search Indexer"
stop-service -displayname "Tridion Content Manager Service Host" -force
stop-service -displayname "Tridion Content Manager Workflow Agent"
stop-service -displayname "Tridion Monitoring Service"

stop-service -displayname "Tridion Translation Manager"

$comObj = new-object -comobject comadmin.comadmincatalog
$comObj.connect($env:COMPUTERNAME)
$comObj.shutdownapplication("SDL Tridion Content Manager")
