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
- Secure VNC connection (insecure, unencrypted by default)

## Why?
To use when you need more grunt but only have limited hardware resources like:

- iPad with a VNC client and SSH client like "Screens" and Panic Prompt 2
- Underpowered or low-memory laptop or old desktop
