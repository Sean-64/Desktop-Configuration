# My desktop configuration

![Screenshot-20220703-120140.png](https://i.postimg.cc/Tw0X4D4H/Screenshot-20220703-120140.png)

First of all we need to make things clear, I USE ARCH BTW !<br/>
Now that you have this essential information we can continue.

We are going to overview my desktop and software configurations point by point so that you can replicate it on your own system.

## Desktop-environement

[**Kde-Plasma**](https://kde.org/fr/plasma-desktop/) as always been one of the most used desktop environements over the years.

But there's a reason for that ! It is highly customizable and can make a pretty powerfull ecosystem with Airdrop like functionalities and more.

So we are first going to install kde-plasma if it's not already done

```
pacman -S xorg plasma kde-applications sddm
```

We will also need to enable the display manager

```
systemctl enable sddm.service
```
We should come up with something like this when loging in

![kde-plasma-5-10-desktop-environment-gets-first-point-release-over-40-bugs-fixed-516254-3-3421734079.jpg](https://i.postimg.cc/3JnXYz3N/kde-plasma-5-10-desktop-environment-gets-first-point-release-over-40-bugs-fixed-516254-3-3421734079.jpg)

Not super fancy I agree...

**But let's spice it up !**

### Appearance

Most of the ricing is going to be done by the Global Theme

We need to go to our settings and then _Appearance_ (if you haven't got elements displayed in my presentation download them with the "Get new..." button)

![Screenshot-20220702-191432.png](https://i.postimg.cc/wBjzmyNg/Screenshot-20220702-191432.png)

**Global-Theme :** ChromOS-Dark

**Application Style :** Breeze

**Plasma Style :** ChromeOS

**Colors :** Aritim-Dark

**Window Decorations :** ChromeOS-dark

**Fonts :** Leave them as default :)

**Icons :** Tela Circle

**Cursors :** Vimix Cursors

**Splash Screen :** Yaplass - ArchLinux

We are also going to change some transparency settings in _Application Style_

![Screenshot-20220702-193207.png](https://i.postimg.cc/D00mPvMb/Screenshot-20220702-193207.png)

### Animations

We are going to change some settings in _Settings > Workspace Behaviour > Desktop Effects_ to make it more vibrant

Then toggle:

- Wobly Windows
- Transluency
- Blur

I would suggest changing blur settings too

![Screenshot-20220703-121301.png](https://i.postimg.cc/nVvt5N6Q/Screenshot-20220703-121301.png)

### KWin Scripts

We need to get and apply new scripts to make our lives easier in _Setting > Window Management > KWin Scripts_

- Move Window to Center
- Video Wall
- Sticky Window Snapping
- Force Blur _(activate it for alacritty, we'll see why after ;)_

### Login

The login is the first step you'll encounter when starting your PC<br/>
So it needs to be welcoming as mush as possible

Go to _Settings > Startup and Shutdown > Login Screen (SDDM)_,
I personally downloaded an SDDM theme called **Vimix**

You can even change the background

![Screenshot-20220703-122508.png](https://i.postimg.cc/nLtWvLhR/Screenshot-20220703-122508.png)

### Input Device (Touchpad)

In my opinion default settings of all devices are ok EXCEPT for the touchpad

So go into _Settings > Input Devices > Thouchpad_ and apply the following settings

![tap.png](https://i.postimg.cc/R0gchdsT/tap.png)
![scroll.png](https://i.postimg.cc/26JhF6fb/scroll.png)
![pointer.png](https://i.postimg.cc/5yCvPVxP/pointer.png)

Now it should be smoother ;)

### Top panel
 To get started right click on your desktop and create a new empty panel : _+ Add Panel > Empty Panel_

 Your job now is going to transform this panel by adding widget and make it look like this

 ![Screenshot-20220703-125503.png](https://i.postimg.cc/6QCCLwpY/Screenshot-20220703-125503.png)

1. Notifications
2. Bluetooth
3. Panel Spacer
4. Digital Clock
5. Media Player
6. Panel Spacer
7. Kde Connect
8. Power Management
9. Audio Volume
10. Lock / Logout

### Down panel / Dock
![Screenshot-20220703-131415.png](https://i.postimg.cc/7L4jNHNL/Screenshot-20220703-131415.png)

Same thing for the panel down there, I let you do the job

1. Application Launcher
2. Margins Separator
3. Icons-only Task Manager

You will need to check some options before leaving

![Screenshot-20220703-131136.png](https://i.postimg.cc/kGw57YXQ/Screenshot-20220703-131136.png)

### Font
The font is very important because it is going to be the thing that you will see the most (text every time every day), so it better be great.

However you will need to install an AUR helper to access the AUR because my font is not on [**Arch**](https://archlinux.org/) official repositories

```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../ && sudo rm -rfv yay/
```

Then install the firacode [nerd edition](https://www.nerdfonts.com/) font

```
yay -S nerd-fonts-fira-code
```

## Terminal

![Screenshot-20220703-132807.png](https://i.postimg.cc/Twb6k7Dd/Screenshot-20220703-132807.png)

Now that we are done with the desktop lets get ourselves on the most important part for a real linux user, **THE TERMINAL !**

My favourite terminal emulator is called [**Alacritty**](https://alacritty.org/), so if it's not already installed :

```
pacman -S alacritty
```

Here comes my dot-files !<br/>
Just copy the _alacrity_ directory in my dots and put it into your _.config_

```
cp -R ./dots/alacritty ~/.config
```

### Shell

We now have a nice terminal emulator but our shell is kind off basic (Bash is not very customizable)

So let's get a new one much more modern and customizable called [**ZSH**](https://www.zsh.org/)

```
pacman -S zsh lolcat neofetch
```

_We need to make it our default shell_

```
chsh -s $(which zsh)
```

Then we are going to copy my ZSH config file into our home directory

```
cp ./dots/.zshrc ~
```

### Shell-Addons

A nice tool called [**Oh-my-zsh**](https://ohmyz.sh/) is going to help us customizing the Z-Shell. So let's get it installed

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

and let's install a [useful autocompletiton addon](https://github.com/zsh-users/zsh-autosuggestions)

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Now we can copy my dot-files to our home directory

```
cp -R ./dots/.oh-my-zsh ~
```

### Terminal editor (Neovim)

![Screenshot-20220703-170535.png](https://i.postimg.cc/g22PNd8Y/Screenshot-20220703-170535.png)
A lot of people uses [Nano](https://www.nano-editor.org/) or [Vim](https://www.vim.org/) as there main terminal editor

I personally use [**Neovim**](https://neovim.io/) that as the advantages of sharing the same keybinds as Vim but with more capabilities due to the number of plugins that we can add.

Well let's install it !

```
pacman -S neovim
```

Now let's get out plugin manager

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

And finally copy my dot-files inside our _.config_

```
cp -R ./dots/nvim ~/.config
```

## Text editor (VSCode)

![Screenshot-20220703-170825.png](https://i.postimg.cc/dVwGfNVQ/Screenshot-20220703-170825.png)

We need to be honest with one thing, developing software with only a terminal based editor even if it's great will never be as practical as a real IDE.

This is why we are going to install VSCode even if it's not fully open source it's in my opinion one of the best IDEs developed during the last years.

```
git clone https://AUR.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin/
makepkg -s
sudo pacman -U visual-studio-code-bin-*.pkg.tar.xzs
cd ../ && sudo rm -rfv visual-studio-code-bin/
```

now we are going to apply my configuration file

```
cp -R ./dots/settings.json ~/.config/Code/User
```

and make sure to install these when launching VSCode:

- Color Theme: **One Dark Pro**

- File Icon Theme: **Material Icon Theme**

## Browser (Brave)

![Screenshot-20220703-172117.png](https://i.postimg.cc/26DPPfM9/Screenshot-20220703-172117.png)

Many browsers exist and some are more customizable than others.

Brave does not belong to the "customizable browsers" in my opinion but it doesn't change the fact that it's a great browser that blocks most of ads when surfing the Web

However there are ways to get around and still get a clean looking browser.

After having brave installed 

```
yay -S brave-bin
```

And finaly install the extension [Tabliss](https://chrome.google.com/webstore/detail/tabliss-a-beautiful-new-t/hipekcciheckooncpjeljhnekcoolahp)

![Screenshot-20220703-173910.png](https://i.postimg.cc/ZRLsyvn4/Screenshot-20220703-173910.png)

At this point it should be pretty easy for you to customize your home screen

![Screenshot-20220703-174106.png](https://i.postimg.cc/GmJ7HSp6/Screenshot-20220703-174106.png)
