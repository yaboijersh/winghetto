@echo off        
:: BatchGotAdmin        
:-------------------------------------        
REM  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"  
REM --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (    echo Requesting administrative privileges...    ) else ( goto gotAdmin )  
:UACPrompt  
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
    "%temp%\getadmin.vbs"  
    exit /B
:gotAdmin
echo This script is used for installs on my personal computers.
pause 
echo Creating account and enabling administrative account now. 
pause
net user administrator /active:yes
net user administrator P0w3r3dg3!!
pause
@echo Creating Account.
set /p user= What is the Username?
set /p pwd= What is the Password?
net user %user% %pwd% /add && net user %user% /PasswordChg:No && WMIC USERACCOUNT WHERE Name='%user%' SET PasswordExpires=FALSE
pause
echo Installing programs now.
winget import --import-file "winstall-8073.json" &&
net user admin /del
logoff
REM script made by Joss Ross
