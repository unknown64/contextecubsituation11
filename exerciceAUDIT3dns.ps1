#====================================================================================
#NAME: exerciceAUDIT3dns.ps1
#AUTHOR: MANGIN Pierre
#DATE: 11/04/2023
#
#VERSION 1.0
#COMMENTS: Afficher dans un fichier texte l'ensemble des enregistrements DNS de type A
#Requires -Version 2.0
#====================================================================================

# Obtenir la date actuelle
$date = Get-Date

# Définir le nom du fichier texte à créer
$outputFile = "C:\git_cub\contextecubsituation11\auditDNS.txt"
$zoneDNS = "local.anvers.cub.sioplc.fr"

# Récupérer tous les enregistrements DNS du service DNS
$dnsRecords = Get-DnsServerResourceRecord -ZoneName $zoneDNS -RRType A
$output = "Audit DNS - $date`n"

# Écrire les enregistrements DNS dans un fichier texte
$dnsRecords | Out-File $outputFile
#Ajouter la date
$output | Out-File $outputFile -Append
