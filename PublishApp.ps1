$ServerInstance = "ST-125856-DEV" # Development
$AppName = "Dynamics4Business - Mennens D365BC"
$AppVersionOld = "1.0.0.0"
$AppVersion = "1.0.0.0"
$AppPath = "C:\Mennens\Mennens_V1\Dynamics4Business_Dynamics4Business - Mennens D365BC_1.0.0.0.app"

Clear-Host

#Uninstall D4B Maatwerk
Uninstall-NAVApp -Name $AppName -ServerInstance $ServerInstance -Version $AppVersionOld
Unpublish-NAVApp -Name $AppName -ServerInstance $ServerInstance -Version $AppVersionOld


#Install D4B maatwerk
Publish-NAVApp -Path $AppPath -ServerInstance $ServerInstance -SkipVerification
Sync-NAVApp -Name $AppName -ServerInstance $ServerInstance -Version $AppVersion -Mode forcesync -Force
Install-NAVApp -Name $AppName -ServerInstance $ServerInstance -Version $AppVersion -Force
#Start-NAVAppDataUpgrade -Name $AppName  -ServerInstance $ServerInstance -Force


Get-NAVAppInfo -ServerInstance $ServerInstance -Name $AppName -Tenant default -TenantSpecificProperties
Write-Host(Get-Date)

