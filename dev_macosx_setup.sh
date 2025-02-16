
# handle keyboard HOME/END keys
# map to start of line/end of line
KEYBINDINGS_DIR="~/Library/KeyBindings"
if [ ! -d "$KEYBINDINGS_DIR" ]; then
    echo 'creating default macosx keybindings'
    mkdir -p ~/Library/KeyBindings
    cp ./macoskeyboardbindings.dict ~/Library/KeyBindings/DefaultKeyBinding.dict
fi

# install cli tools
brew install bat #cat
brew install duf #df
brew install exa #ls
brew install scc
brew install tldr #man
brew install entr
brew install fzf
brew install jq
brew install procs #ps
brew install sd #sed
brew install ripgrep #grep
brew install tre #tree
brew install xsel #clipboard
brew install hstr #history

# always override base aliases/scripts
cat .aliases >> $ZSH_CUSTOM/kinglew.zsh
