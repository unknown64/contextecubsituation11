#====================================================================================
#NAME: exerciceAUDIT.ps1
#AUTHOR: MANGIN Pierre
#DATE: 11/04/2023
#
#VERSION 1.0
#COMMENTS: Afficher dans une interface graphique 4 boutons permettant de lancer les 4 scripts
#Requires -Version 2.0
#====================================================================================
# Création de la fenêtre principale avec 4 panneaux et des boutons
Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = "Interface graphique"
$form.Width = 600
$form.Height = 400

$splitContainer1 = New-Object System.Windows.Forms.SplitContainer
$splitContainer1.Orientation = [System.Windows.Forms.Orientation]::Horizontal
$splitContainer1.SplitterDistance = $form.Height/2
$splitContainer1.Dock = [System.Windows.Forms.DockStyle]::Fill

$splitContainer2 = New-Object System.Windows.Forms.SplitContainer
$splitContainer2.Orientation = [System.Windows.Forms.Orientation]::Vertical
$splitContainer2.SplitterDistance = $form.Width/2
$splitContainer2.Dock = [System.Windows.Forms.DockStyle]::Fill

$button1 = New-Object System.Windows.Forms.Button
$button1.Text = "audit services"
$button1.Dock = [System.Windows.Forms.DockStyle]::Fill
$button1.Add_Click({Write-Host "Bouton 1 appuyé."})

$button2 = New-Object System.Windows.Forms.Button
$button2.Text = "audit dhcp"
$button2.Dock = [System.Windows.Forms.DockStyle]::Fill
$button2.Add_Click({Write-Host "Bouton 2 appuyé."})

$button3 = New-Object System.Windows.Forms.Button
$button3.Text = "audit dns"
$button3.Dock = [System.Windows.Forms.DockStyle]::Fill
$button3.Add_Click({Write-Host "Bouton 3 appuyé."})

$button4 = New-Object System.Windows.Forms.Button
$button4.Text = "Bouton 4"
$button4.Dock = [System.Windows.Forms.DockStyle]::Fill
$button4.Add_Click({Write-Host "Bouton 4 appuyé."})

$splitContainer2.Panel1.Controls.Add($button1)
$splitContainer2.Panel2.Controls.Add($button2)

$splitContainer1.Panel1.Controls.Add($splitContainer2)
$splitContainer1.Panel2.Controls.Add($button3)
$splitContainer1.Panel2.Controls.Add($button4)

$form.Controls.Add($splitContainer1)

# Affichage de la fenêtre
$form.ShowDialog()
