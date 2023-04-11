# Obtenir la date et l'heure actuelles
$date = Get-Date

# Vérifier l'état des services DHCP, DNS et AD
$dhcpStatus = Get-Service -Name DHCP | Select-Object -ExpandProperty Status
$dnsStatus = Get-Service -Name DNS | Select-Object -ExpandProperty Status
$adStatus = Get-Service -Name ADWS | Select-Object -ExpandProperty Status

# Créer une chaîne de caractères contenant les informations à écrire dans le fichier
$output = "Audit des services DHCP, DNS et AD - $date`n"
$output += "Service DHCP: $dhcpStatus`n"
$output += "Service DNS: $dnsStatus`n"
$output += "Service AD: $adStatus`n"

# Écrire les informations dans le fichier
$output | Out-File -FilePath "C:\git_cub\contextecubsituation11\auditServices.txt" -Append
