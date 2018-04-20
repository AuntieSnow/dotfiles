#Bash Aliases
alias a='alias'
a rebash='. ~/.bashrc && clear'
a editbash='nvim ~/.bashrc && rebash'
a {please,dominate,fuck,fucking,bitch}='sudo'

#Installation Aliases
a ai='trizen -S'
a au='trizen -Syu'
a ar='trizen -Rns'

#General Aliases
a {cd..,..}='cd ..'
a ls='ls --color=auto'
a la='ls -lA --color=auto'
a myip='curl http://ipecho.net/plain; echo'
a cx='sudo chmod +x'
a vim='nvim'

#Functions
mkcd() { mkd "$1" && cd "$2" ; }
mvcd() { mv "$1" "$2" && cd "$2" ; }
cpcd() { cp "$1" "$2" && cd "$2" ; }
run() { [ $# -ge 2 ] || exit 1 ; x=$1 ; shift
            for i in $(seq $x) ; do "$@" ; done ; }

#EDITOR
EDITOR='nano'

#PATH
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export NOUGAT_SCREENSHOT_DIRECTORY=/home/snow/pictures/.screenshots

#PS1
export PS1="\[\033[38;5;54m\][\[$(tput sgr0)\]\[\033[38;5;55m\]\w\[$(tput sgr0)\]\[\033[38;5;54m\]]\[$(tput sgr0)\]\[\033[38;5;14m\]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

