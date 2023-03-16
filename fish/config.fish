if status is-interactive
  fish_vi_key_bindings
  bind -M insert -m default jk backward-char force-repaint

  # Commands to run in interactive sessions can go here
  starship init fish | source
end

alias lv="lvim"
alias v="nvim"
alias fuckyou="git push -f"
alias b="brew"
# alias ll="exa -l"

function nvm
  bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

set fish_greeting

# pnpm
set -gx PNPM_HOME "/Users/victor.lisboa.ps/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
