# winghetto Install Script 


## How does this work?

Glad you asked! So this script can be cloned or downloaded as a zip. What you will need to do after downloading is RightClick and do run as admin or if you are running a Admin Powershell just do a `./winghetto.ps1` and that should start up the script. Script does require admin as you are creating the accounts. From their just follow the steps and it should be smooth sailing.


## Something to note
With the installing of applications it does use winget. I was able to get the json file from `https://winstall.app/`. After you have selected the apps you want to download. I suggest finding all the apps really want. Click the generate script option and then winget import that will give you the json file needed to have the script work correctly. 

 Some apps may not installs correctly as they install on a user base and not a system base. I can't fix that but will do some research to see if I can fix it.
another note  to add to this as well I just create an admin account on my install , this became a weird thing i did when setting up non-domained join computers at a job once. 


### This script is made by Joshua Ross
