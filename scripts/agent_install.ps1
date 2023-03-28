<#$downloadfolder = 'C:\packer\'
$checkdir = Test-Path -Path $downloadfolder
if ($checkdir -eq $false){
    Write-Verbose "Creating '$downloadfolder' folder"
    New-Item -Path $downloadfolder -ItemType Directory | Out-Null
}
else {
    Write-Verbose "Folder '$downloadfolder' already exists."
}

Move-Item C:\Users\sgourimath\Downloads\packer_1.8.6_windows_386\agent\ot_zabbix_agent.exe -Destination $downloadfolder
#>
cd c:\
.\ot_zabbix_agent.exe /S /HOSTNAME=test.cloud.opentext.com /IP=10.59.1.100 /DC=lit
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
GCESysprep