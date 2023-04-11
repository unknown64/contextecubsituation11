#====================================================================================
#NAME: exerciceAUDIT4ad.ps1
#AUTHOR: MANGIN Pierre
#DATE: 11/04/2023
#
#VERSION 1.0
#COMMENTS: Afficher dans un fichier texte l'ensemble des informations sur les comptes utilisateurs
#Requires -Version 2.0
#====================================================================================
 
# Obtenir la date actuelle
$date = Get-Date

# Définir le nom du fichier texte à créer
$outputFile = "C:\git_cub\contextecubsituation11\auditAD.txt"

# Récupérer tous les utilisateurs Active Directory du domaine
$users = Get-ADUser -Filter *
$output = "Audit AD - $date`n"

# Écrire les informations des utilisateurs dans un fichier texte
$users | Select-Object Name, SamAccountName, Description, EmailAddress, PasswordExpired, UserPrincipalName, Enabled | Format-Table -AutoSize | Out-File $outputFile
$output | Out-File $outputFile -Append