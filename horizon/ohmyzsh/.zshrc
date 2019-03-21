# ohmyzsh path
export ZSH="/home/asc11cat/.oh-my-zsh"
PATH=$PATH:/home/asc11cat/Scripts/

# theme load
ZSH_THEME="afowler"

# plugins load
plugins=(git)
source $ZSH/oh-my-zsh.sh

# on terminal start
ufetch
