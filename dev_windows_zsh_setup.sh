
# install scoop
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
# Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

######################################################
# Install/Upgrade apps using Chocolatey
######################################################

echo "Installing/Upgrading applications using Scoop"

scoop bucket add main
scoop bucket add extras
scoop bucket add nerd-fonts

## dev tools
scoop update main/bat #cat
scoop update main/duf #df
scoop update main/eza #ls
scoop update main/scc
scoop update main/tldr #man

scoop update main/fzf
scoop update main/jq
scoop update main/procs #ps
scoop update main/sd #sed
scoop update main/ripgrep #grep
scoop update main/tre-command #tree
scoop update extras/autojump

scoop update extras/bruno
scoop update main/peco
scoop update extras/zeal
scoop update extras/touchcursor

## dev IDEs
scoop update extras/vscode
scoop update nerd-fonts/JetBrainsMono-NF
scoop update nerd-fonts/JetBrainsMono-NF-Propo
scoop update nerd-fonts/JetBrainsMono-NF-Mono

# always override base aliases/scripts
cat .aliases >> $ZSH/custom/kinglew.zsh

# tocuhcursor
echo "setup touchcursor"
cp ./touchcursor/settings.cfg $APPDATA/TouchCursor/settings.cfg

# configure .zshrc
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="gnzh"/' ~/.zshrc
sed -i 's/^plugins=.*/plugins=(git autojump z dotenv zsh-autosuggestions)/' ~/.zshrc

if ! (( $(grep -c "^export.HISTSIZE" ~/.zshrc )  )) ; then
    echo "export HISTSIZE=100000" >> ~/.zshrc
fi
if ! (( $(grep -c "^export.SAVEHIST" ~/.zshrc )  )) ; then
    echo "export SAVEHIST=100000" >> ~/.zshrc
fi
if ! (( $(grep -c "^export.HISTCONTROL" ~/.zshrc )  )) ; then
    echo "export HISTCONTROL=ignorespace" >> ~/.zshrc
fi
if ! (( $(grep -c "^setopt.hist_ignore_all_dups" ~/.zshrc )  )) ; then
    echo "setopt hist_ignore_all_dups" >> ~/.zshrc
fi
if ! (( $(grep -c "^setopt.hist_ignore_space" ~/.zshrc )  )) ; then
    echo "setopt hist_ignore_space" >> ~/.zshrc
fi
