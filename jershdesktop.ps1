Start-Process Powershell -Verb runAs
Write-Output This Script us Automation on new Windows installs 
Pause
 
Write-Output Creating User Account
Pause
#Config 
Set-Variable /p user= What is the Username?
Set-Variable /p pwd= What is the Password?
net user %user% %pwd% /add -and net user %user% /PasswordChg:Tes -and WMIC USERACCOUNT WHERE Name='%user%' SET PasswordExpires=FALSE

Write-Output Installing Applications. Please Be Patient. -and
winget import --import-file "winstall-8030.json" -and
net user admin /del
logoff
