pacman -Sy git base-devel vim neovim alacritty zsh lolcat
git clone https://AUR.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin/
makepkg -s
sudo pacman -U visual-studio-code-bin-*.pkg.tar.xzs
cd ../ && sudo rm -rfv visual-studio-code-bin/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../ && sudo rm -rfv yay/
yay -S nerd-fonts-fira-code
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
chsh -s $(which zsh)

cp dots/settings.json ~/.config/Code/User/config.json # -- VSCode dot-files

cp -R dots/alacritty ~/.config # -- Alacritty dot-files

cp dots/.zshrc ~ # -- ZSH dot-files
cp dots/.oh-my-zsh ~ # OMZ dot-files

cp -R dots/nvim ~/.config # -- NEOVim dot-files