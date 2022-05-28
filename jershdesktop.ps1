Start-Process Powershell -Verb runAs
Write-Output This Script us Automation on new Windows installs 
Pause
 
Write-Output Creating User Account
Pause
#Config 
Set-Variable user= What is the Username?
Set-Variable pwd= What is the Password?
net user %user% %pwd% /add -and net user %user% /PasswordChg:Tes -and WMIC USERACCOUNT WHERE Name='%user%' SET PasswordExpires=FALSE
Pause

Write-Output Installing Applications. Please Be Patient. -and
winget import --import-file "winstall-8030.json" -and
