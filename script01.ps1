#Création d'un nouvel utilisateur et de son dossier partagé à son nom

$nom = Read-Host "Merci de Rentrer le Nom et le Prénom de l'Utilisateur à Créer"

$login = Read-Host "Merci de Rentrer le login de l'Utilisateur à Créer"

$mdp = Read-Host "Merci de Rentrer le Mot de Passe de l'Utilisateur à Créer"

New-ADUser -Name $nom -SamAccountName $login -UserPrincipalName $login@acme.fr -AccountPassword (ConvertTo-SecureString -AsPlainText $mdp -Force) -PasswordNeverExpires $true -CannotChangePassword $true -Enabled $true
