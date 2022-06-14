# Source completions
autoload -U compinit
compinit
autoload -U +X bashcompinit && bashcompinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' insert-tab pending

completions=(
  "/usr/local/Cellar/asdf/0.10.2/share/zsh/site-functions/_asdf"
  "/opt/homebrew/share/zsh/site-functions/_yq"
  "/usr/local/opt/curl/share/zsh/site-functions/curl"
)

for completion in ${completions[@]}; do
  if test -f $completion
  then
    source $completion
  fi
  if [[ ! -o interactive ]]; then
    return
  fi
done

compctl -K _tat tat
_tat() { reply=(`tmux ls -F "#{session_name}"`) }

command -v flux >/dev/null && . <(flux completion zsh) && compdef _flux flux
