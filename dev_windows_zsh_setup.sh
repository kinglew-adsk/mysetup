
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
scoop install main/bat #cat
scoop install main/duf #df
scoop install main/eza #ls
scoop install main/scc
scoop install main/tldr #man

scoop install main/fzf
scoop install main/jq
scoop install main/procs #ps
scoop install main/sd #sed
scoop install main/ripgrep #grep
scoop install main/tre-command #tree
scoop install extras/autojump

scoop install extras/bruno
scoop install main/peco
scoop install extras/zeal
scoop install extras/touchcursor

## dev IDEs
scoop install extras/vscode
scoop install nerd-fonts/JetBrainsMono-NF
scoop install nerd-fonts/JetBrainsMono-NF-Propo
scoop install nerd-fonts/JetBrainsMono-NF-Mono

# always override base aliases/scripts
cat .aliases >> $ZSH_CUSTOM/kinglew.zsh

# tocuhcursor
echo "setup touchcursor"
cp ./touchcursor/settings.cfg $APPDATA/TouchCursor/settings.cfg



