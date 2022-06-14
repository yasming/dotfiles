# Source completions
autoload -U compinit
compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C $HOME/.asdf/installs/terraform/1.0.0/bin/terraform terraform

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' insert-tab pending

completions=(
  "/opt/homebrew/share/zsh/site-functions/_kubectl"
  "/usr/local/Cellar/asdf/0.10.1/share/zsh/site-functions/_asdf"
  "/opt/homebrew/share/zsh/site-functions/_yq"
  "/usr/local/opt/curl/share/zsh/site-functions/curl"
  "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
  "/Users/lucas.saboya/.pack/completion.zsh"
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
