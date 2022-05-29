$title = "WinJersh Install Sctipt"
$host.ui.RawUI.WindowTitle = $title

Write-Output "WinJersh Install Sctipt is used to create new accounts and Installing programs on my personal computers!"
Pause
 
#Creating Accounts Config
Write-Output "Creating User Account"
Pause
$Cred = Get-Credential -Message 'Enter username and password for new local account'
New-LocalUser -Name $Cred.UserName -Password $Cred.Password 

-and 

#Program Installs
Write-Output "Installing Applications. Please Be Patient." -and
winget import --import-file "winstall-8073.json" 

