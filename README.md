### Dotfiles
--------------------
![Terminal](https://i.imgur.com/yswU2EP.png "Terminal")
![Double Commander](https://i.imgur.com/qco0R9F.png "Double Commander")

### Installation
--------------------
**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Manual installation
```sh
    # Archlinux (2017.08.01)
    sudo pacman -S openssh iptables ntp git wget curl tar xz htop iotop
    sudo pacman -S mc neovim zsh tmux fasd fzf peco rxvt-unicode-265color xsel wmctrl

    # Ubuntu (17.10)
    sudo apt-get install openssh-client openssh-server iptables ntp git wget curl tar xz htop iotop
    sudo apt-get install mc neovim zsh tmux fzf fasd peco rxvt-unicode-265color xsel wmctrl

    # Default Bash
    sudo chsh -s /bin/bash

    # Cloning the repository
    git clone https://github.com/nabariq/dotfiles.git && cd dotfiles

    # Search and deletion of .gitignore in all directories
    find home/. -type f -name .gitignore -exec rm {} \;

    # Copying of conf. files in the home directory
    cp -a home/. $HOME/

    # Changing permissions
    chmod 755 $HOME/.bin/* $HOME/.local/share/applications/* $HOME/.urxvt/ext/* $HOME/.Xresources

    # Apply settings
    source $HOME/.profile

    # Creating a symbolic link skins and themes (sudo -H -i)
    ln -sf $HOME/.config/mc/skins/onedark.ini /usr/share/mc/skins/onedark.ini
    ln -sf $HOME/.config/vlc/skins/Arc-Dark.vlt $HOME/.local/share/vlc/skins2/Arc-Dark.vlt

    # Installing the tmux plugin manager
    wget -O ~/.zsh/antigen.zsh git.io/antigen

    # Installing Plugins (commands)
    > tmux:     Prefix + I
    > vim:      PlugInstall
```

### TODO
--------------------
- [ ] Change hot keys according to the default vim