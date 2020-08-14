#!/bin/sh
# sh -c "$(curl -H 'Cache-Control: no-cache' -LsSo- https://raw.githubusercontent.com/IgorAssuncao/system-config/master/start.sh)"

echo "This script automatically installs some tools and creates symlinks for you."
echo "All of these tools will be prompted to install:
    - i3 custom config
    - Kitty
    - Kitty custom files
    - Oh-my-zsh
    - NeoVim (Newer version of vim)
    - Custom vimrc (vim config file)
    - Custom init.vim (nvim config file)
  "
echo "Do you want to continue?"
read -p "Please, answer (y/n): " -n 1 choice && \
  if [ $choice == "y" ]; then
    exit 0
  fi

echo "Setup i3 config?"
read -p "Please, answer (y/n): " -n 1 choice && \
  if [ $choice == "y" ]; then
    FILE=~/.i3/config
    if [ -f "$FILE" ]; then
      echo "Renaming ~/.i3/config to ~/.i3/config.bkp"
      mv ~/.i3/config ~/.i3/config.bkp
    fi
    echo "Creating ~/.i3/config symlink" && \
      ln -s ~/system-config/.i3/config ~/.i3/config
  fi

echo "Install Custom Fonts?"
read -p "Please, answer (y/n): " -n 1 choice && \
  if [ $choice == "y" ]; then
      echo "Copying fonts to ~/.local/share/fonts" && \
      mkdir -p ~/.local/share/fonts && \
      cp ~/system-config/fonts/ttf/* ~/.local/share/fonts && \
      fc-cache && \
      echo "Finished creating copying fonts"
  fi

echo "Install Kitty?"
read -p "Please, answer (y/n): " -n 1 choice && \
  if [ $choice == "y" ]; then
    echo "Installing kitty" && \
      sudo pacman -S kitty && \
      echo "Finished installing kitty"
      echo "Creating kitty symlink" && \
      if [ -d "~/.config/kitty" ]; then
        echo "Renaming ~/.config/kitty to ~/.config/kitty.bkp"
        mv ~/.config/kitty ~/.config/kitty.bkp
      fi && \
        ln -s ~/system-config/.config/kitty/ ~/.config/kitty && \
        echo "Finished creating kitty symlink"
  fi

echo "Install custom Kitty config?"
read -p "Please, answer (y/n): " -n 1 choice && \
  if [ $choice == "y" ]; then
    echo "Creating kitty symlink" && \
    if [ -d "~/.config/kitty" ]; then
      echo "Renaming ~/.config/kitty to ~/.config/kitty.bkp"
      mv ~/.config/kitty ~/.config/kitty.bkp
    fi && \
      ln -s ~/system-config/.config/kitty/ ~/.config/kitty && \
      echo "Finished creating kitty symlink"
  fi

echo "Install Oh-my-zsh?"
read -p "Please, answer (y/n): " -n 1 choice && \
  if [ $choice == "y" ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
      echo "Creating ~/.zshrc symlink" && \
      if [ -a "~/.zshrc" ]; then
        echo "Renaming ~/.zshrc to ~/.zshrc.bkp"
        mv ~/.zshrc ~/.zshrc.bkp
      fi && \
        ln -s ~/system-config/.config/zsh/.zshrc ~/.zshrc && \
        echo "Finished creating ~/.zshrc symlink"
        echo "Cloning spaceshipt theme" && \
        git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" && \
        echo "Creating ~/.spaceship symlink" && \
        ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" && \
        echo "Finished creating spaceshipt symlink"
        echo "Installing ZInit (ZSH Plugin Manager)"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)" && \
        echo "Finished downloading ZInit"

  fi

echo "Install NeoVim?"
read -p "Please, answer (y/n): " -n 1 choice && \
  if [ $choice == "y" ]; then
    echo "Installing NeoVim" && \
      sudo pacman -S neovim-nightly && \
      echo "Finished installing NeoVim"
  fi

echo "Install custom vimrc?"
read -p "Please, answer (y/n): " -n 1 choice && \
  if [ $choice == "y" ]; then
    if [ -a "~/.vimrc" ]; then
      echo "Renaming ~/.vimrc to ~/.vimrc.bkp"
      mv ~/.vimrc ~/.vimrc.bkp
    fi
    echo "Creating ~/.vimrc symlink" && \
      ln -s ~/system-config/.config/vim/vimrc ~/.vimrc
    echo "Creating ~/.vim/coc-settings synlink" && \
      ln -s ~/system-config/.config/vim/coc-settings.json ~/.vim/coc-settings.json
  fi

echo "Install custom init.vim (nvim config file)?"
read -p "Please, answer (y/n): " -n 1 choice && \
  if [ $choice == "y" ]; then
    if [ -d "~/.config/nvim" ]; then
      echo "Renaming ~/.config/nvim to ~/.config/nvim.bkp"
      mv ~/.config/nvim ~/.config/nvim.bkp
    fi
    echo "Creating ~/.config/nvim symlink" && \
      ln -s ~/system-config/.config/nvim ~/.config/nvim
  fi
