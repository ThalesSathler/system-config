# System-config

##### i3
Personal i3 window manager config file under .i3 folder

##### vim
Personal Vim config file

It uses Vim-Plug as the PluginManager, if any help is needed with Vim-Plug, it can be found in the [official repo](https://github.com/junegunn/vim-plug)

To setup correctly you need to clone the repo in `~`
Then run: `ln -s system-config/.config/vim ~/.vimrc`
Make sure to install all the plugins using `:PlugInstall` inside vim
You're all set

##### Xinit
#### Must have nvidia proprietary driver installed to work
### To install NVidia proprietary driver in Manjaro or Arch
```sh
inxi -G -> This shows GPU information
mhwd -a pci nonfree 0300 ->  This installs GPU the proprietary drive
```

To make the .xinitrc file located under `config/xinit` work all you have to do is ```sh cp ./config/xinit/.xinitrc ~```
