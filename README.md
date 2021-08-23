# login-validation-script-linux
Bash script to send emails when unsuccessful login attempt happens to your machine

# PRE REQUISITES
Step 1: Install a mail server  
```	$ sudo apt install mailutils ```  

Step 2: Use .bashrc file to setup your authentication failure mail.  
```	$ vim .bashrc```  

Step 3: Edit .bashrc file to place your authentication failure mail script. The name of my script is badlogin.sh. Place it under /usr/bin/badlogin.sh  
	In the end of .bashrc script append this line  
```	sh /usr/bin/badlogin.sh```  

Step 4: provide execute access to the script  
```	$ sudo chmod +x /usr/bin/badlogin.sh ``` 
