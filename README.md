Sets up minimal development environment with xmonad, Git, Java, Emacs, PostgreSql & Firefox pre-installed.

     ansible-playbook provision-vagrant.yml -i inventory --user=wfaler --ask-sudo-pass --ask-pass
     
Logon to server, run:
    
     tightvncserver :0 -geometry 1440x900
     
To shutdown:

    tightvncserver -kill :0
    
To map meta keys correctly on Apple keyboards, connect to VNC, then run:
    
    . .xsession

## TODO

Still lots to do:

- Install SBT by default
- Install Nodejs by default
- Install Ruby/RVM by default
- Install Haskell Stack
- Setup nginx by default
