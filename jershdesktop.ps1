@echo This Script us Automation on new Windows installs 
Start-Process Powershell -Verb runAs &&




winget import --import-file "winstall-8030.json" 
