echo "installing applications..."
yay -S git make kitty mpd mpdris2 neovim sxhkd xlockmore scrot xclip pamixer playerctl thunar brave-bin discord steam multimc-bin ncmpcpp unclutter xwallpaper lxsession zsh zsh-autosuggestions zsh-syntax-highlighting mpv networkmanager ttf-cascadia-code gnu-free-fonts otf-font-awesome-5-free xorg feh jre-openjdk tlp torbrowser-launcher simple-mtpfs noto-fonts-emoji-blob zathura zathura-psf-mupdf

echo "installing dotfiles..."
cd ~/
mkdir -p ~/.config/
git clone https://github.com/hispanicsanic/dotfiles
cp -r ~/dotfiles/* ~/
cp -r ~/30-touchpad.conf /usr/share/X11/xorg.conf.d/

mkdir -p ~/.local/src/
cd ~/.local/src/

echo "installing dwm..."
git clone https://github.com/hispanicsanic/dwm
cd ~/.local/src/dwm/
sudo make install

echo "installing dwmblocks..."
git clone https://github.com/hispanicsanic/dwmblocks
cd ~/.local/src/dwmblocks/
sudo make install

echo "installing dmenu..."
git clone https://github.com/hispanicsanic/dmenu
cd ~/.local/src/dmenu
sudo make install

echo "installing zsh..."
chsh -s /bin/zsh

echo "all done!"
