# echo "Starting updating apt" && \
# sudo apt update && \
# echo "-----------------------------" && \
# echo "Installing ZSH" && \
# sudo apt install zsh -y && \
# echo "-----------------------------" && \
# echo "Installing Oh My ZSH" && \
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
# echo "Creating ~/.zshrc symlink" && \
# echo "Renaming ~/.zshrc to ~/.zshrc.bkp" && \
# mv ~/.zshrc ~/.zshrc.bkp && \
# ln -s ~/system-config/.config/zsh/.zshrc ~/.zshrc && \
# echo "Finished creating ~/.zshrc symlink" && \
echo "Cloning spaceshipt theme" && \
git clone https://github.com/denysdovhan/spaceship-prompt.git "$HOME/.oh-my-zsh/custom/spaceship-prompt" && \
echo "Creating ~/.spaceship symlink" && \
ln -s "$HOME/.oh-my-zsh/custom/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme" && \
echo "Finished creating spaceshipt symlink"
# echo "Installing ZInit (ZSH Plugin Manager)" && \
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)" && \
# # echo "Finished downloading ZInit" && \
# echo "-----------------------------" && \
# echo "Installing NeoVim" && \
# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage && \
# chmod u+x nvim.appimage && \
# ./nvim.appimage && \
# echo "Creating ~/.vimrc symlink" && \
# ln -s ~/system-config/.config/vim/vimrc ~/.vimrc && \
# echo "Creating ~/.vim/coc-settings synlink" && \
# ln -s ~/system-config/.config/vim/coc-settings.json ~/.vim/coc-settings.json && \
# echo "Finished installing nvim"