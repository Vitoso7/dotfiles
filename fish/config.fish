if status is-interactive
    fish_vi_key_bindings
    # bind -M insert -m default jk backward-char force-repaint

    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# alias lv="lvim"
# alias v="nvim"
alias fuckyou="git push -f"
# alias b="brew"
# alias zel="zellij"
# alias nnn="nnn -de"

# Java is ass
alias spring="mvn spring-boot:run"
alias spring-local="mvn spring-boot:run -Plocal"
# Java is ass end

# Kubernetes
alias kub="kubectl"
# Kubernetes end 

# MacOS only
if test (uname) = Darwin
    function nvm
        bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
    end

    set -x NVM_DIR ~/.nvm
    nvm use default --silent
end


set fish_greeting

# Nexus ojc
set -Ux MAVEN_ALL_REPO_URL "https://nexus.gjccorp.com.br/repository/maven-all/"
set -Ux MAVEN_RELEASES_REPO_URL "https://nexus.gjccorp.com.br/repository/maven-releases/"
set -Ux MAVEN_SNAPSHOTS_REPO_URL "https://nexus.gjccorp.com.br/repository/maven-snapshots/"
# Nexus ojc end

# pnpm
set -gx PNPM_HOME "/Users/victor.lisboa.ps/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

set -gx PATH "/Users/victorlisboa/.config/kitty" $PATH

# set --export BUFLS "~/go/"
# set --export PATH 

set -Ux EDITOR hx

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
# bun end

set --export RUBY "/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
set --export PATH $RUBY $PATH

set --export ANDROID_HOME "/Users/$USER/Library/Android/sdk"
set --export PATH "$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
set -gx SWIFTENV_ROOT "$HOME/.swiftenv"
set -gx PATH "$SWIFTENV_ROOT/bin" $PATH
if which swiftenv >/dev/null
    status --is-interactive; and source (swiftenv init -|psub)
end

zoxide init fish | source

# yazi
function yy
    set tmp (mktemp -t "yazi-cwd.XXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
# yazi end

# go
set -U fish_user_paths ~/go/bin $fish_user_paths
# go end
#

set -Ux fish_user_paths $fish_user_paths $PATH:$HOME/.config/zide/bin

# source /opt/homebrew/opt/asdf/libexec/asdf.fish

# export XDG_CONFIG_HOME="$HOME/.config"
#
