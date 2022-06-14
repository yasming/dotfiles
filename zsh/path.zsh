export INFOPATH="/opt/homebrew/share/info:${INFOPATH}";
export MANPATH="/opt/homebrew/share/man:${MANPATH}";
export MANPATH="/usr/local/man:$MANPATH"
export GOPATH="${HOME}/go"
export GOROOT="/opt/homebrew/opt/go/libexec"
export PATH="/usr/local/opt/curl/bin:${PATH}"
export PATH="${PATH}:${GOPATH}/bin"
export PATH="${PATH}:${GOROOT}/bin"
export PATH="${PATH}:/usr/local/opt/fzf/bin"
export PATH="${PATH}:${HOME}/.dotfiles/bin"
export PATH="/usr/local/opt/python@3.7/bin:${PATH}"
export PATH="/usr/local/bin:${PATH}"
export PATH="/opt/homebrew/bin:${PATH}"
export PATH="/opt/homebrew/sbin:${PATH}"
export PATH="/usr/local/opt/ncurses/bin/:${PATH}"
typeset -U path
