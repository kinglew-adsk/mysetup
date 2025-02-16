# can be used for ubuntu linux and also for windows WSL2

apt install bat -y #cat
apt install duf -y #df
apt install exa -y #ls
snap install scc # count LOC
apt install tldr -y #man
apt install entr -y
apt install fzf -y
apt install jq -y
snap install procs #ps
# apt install rust-sd -y #sed
apt install ripgrep -y
apt install tre-command -y #tree
apt install xsel -y
apt install ncdu -y #disk usage
apt install hstr -y #history

apt install autojump
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# always override base aliases/scripts
cat .aliases >> $ZSH_CUSTOM/kinglew.zsh

echo export PATH="$PATH:/snap/bin" >> $ZSH_CUSTOM/snap.zsh