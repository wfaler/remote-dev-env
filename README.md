Sets up minimal development environment with xmonad.

     ansible-playbook provision-vagrant.yml -i inventory --user=wfaler --ask-sudo-pass --ask-pass
     
Logon to server, run:
    
     tightvncserver :0 -geometry 1440x900
     
To shutdown:

    tightvncserver -kill :0
    
To map meta keys correctly on Apple keyboards, connect to VNC, then run:
    
    . .xsession
