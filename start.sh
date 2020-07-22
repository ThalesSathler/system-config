# curl -H 'Cache-Control: no-cache' -LsSo- https://raw.githubusercontent.com/IgorAssuncao/system-config/master/start.sh | sh

echo "This script automatically installs some tools and creates symlinks for you."
echo "All of these tools will be installed:
    1 - Kitty (A terminal emulator)
    2 - VimPlug (A plugin manager for vim)
    3 - QTile (A window manager written in python)
  "
echo "Do you want to continue?"
read -n 1 -p "Please, answer (\"y\") or (\"n\"): " choice
if [ $choice == "n" ]; then
  exit 1
fi
echo ""

echo "Downloading repo" && \
  curl -LsSo- https://github.com/IgorAssuncao/system-config.git ~/ && \
  echo "Finished downloading repo"

echo "Installing kitty" && \
  sudo pacman -S kitty && \
  echo "Finished installing kitty" && \
  echo "Creating kitty symlink" && \
  if [ -d "~/.config/kitty" ]; then
    echo "Renaming ~/.config/kitty to ~/.config/kitty.bkp"
    mv ~/.config/kitty ~/.config/kitty.bkp
  fi && \
    ln -s ~/system-config/.config/kitty/ ~/.config/kitty && \
    echo "Finished creating kitty symlink"

if [ -a "~/.vimrc" ]; then
  echo "Renaming ~/.vimrc to ~/.vimrc.bkp"
  mv ~/.vimrc ~/.vimrc.bkp
echo "Creating ~/.vimrc symlink" && \
  ln -s ~/system-config/.config/vim/vimrc ~/.vimrc

echo "Installing VimPlug" && \
  echo "curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" && \
      echo "Finished installing VimPlug"

echo "Installing Qtile" && \
  sudo pacman -S qtile && \
  echo "Finished installed Qtile" && \
  echo "Creating qtile symlink" && \
  if [ -d "~/.config/qtile" ]; then
    echo "Renaming ~/.config/qtile to ~/.config/qtile.bkp"
    mv ~/.config/qtile ~/.config/qtile.bkp
  fi && \
    ln -s ~/system-config/.config/qtile/ ~/.config/qtile && \
    echo "Finished creating qtile symlink"

