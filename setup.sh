PROGRAMFOLDER="/home/bijan/Programs"

declare -a arr=("emacs"
                "vim"
                "git"
                "openjdk-8-jdk"
                "firejail"
                "keepassxc"
                "texlive-full"
                "python-pip")


mkdir -p $PROGRAMFOLDER

sudo apt update && sudo apt upgrade
for i in "${arr[@]}" do
	sudo apt-get install -y $i
done

sudo apt-get remove ubuntu-web-launchers

# Install owncloud client for sciebo
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_18.04/ /' > /etc/apt/sources.list.d/isv:ownCloud:desktop.list"
sudo apt-get update
sudo apt-get install owncloud-client
wget -nv https://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_18.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update

# Setup bashit
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
cd ~/.bash_it
./install.sh --silent
cd ~

# Setup Vim
git clone https://github.com/jceb/vimin.git ~/.vim
cd ~/.vim
./update
cd ~

# Setup Emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
\cp ./.spacemacs ~/.spacemacs
\cp -r ./.emacs.d/private/* ~/.emacs.d/private

# Setup fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Setup Tagspaces
#wget -r -np -P $PROGRAMFOLDER https://github.com/tagspaces/tagspaces/releases/download/v2.9.0/tagspaces-2.9.0-linux64.tar.gz
#mv "$PROGRAMFOLDER/github.com/tagspaces/tagspaces/releases/download/v2.9.0/tagspaces-2.9.0-linux64.tar.gz" "$PROGRAMFOLDER/tagspaces.tar.gz"
#rm -rf "$PROGRAMFOLDER/github.com"
#tar -xzf "$PROGRAMFOLDER/tagspaces.tar.gz"
#rm "$PROGRAMFOLDER/tagspaces.tar.gz"
#chmod +x "$PROGRAMFOLDER/tagspaces-linux-x64/tagspaces"
