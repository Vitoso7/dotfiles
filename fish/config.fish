if status is-interactive
    fish_vi_key_bindings

    # Commands to run in interactive sessions can go here
    starship init fish | source
end

alias ff="fastfetch"
alias y="yazi"

# ojc alias
alias ojc-qa-cluster 'kubectl config use-context k8s-cluster-qa'
alias ojc-az-cluster 'kubectl config use-context aks-corp-prd-eus2'
# ojc alias end

# Java is ass
alias spring-run="mvn spring-boot:run"
alias spring-run-local="mvn spring-boot:run -Plocal"
# Java is ass end

# Kubernetes
alias kub="kubectl"
# Kubernetes end 

set fish_greeting

# ojc
set -Ux MAVEN_ALL_REPO_URL "https://nexus.gjccorp.com.br/repository/maven-all/"
set -Ux MAVEN_RELEASES_REPO_URL "https://nexus.gjccorp.com.br/repository/maven-releases/"
set -Ux MAVEN_SNAPSHOTS_REPO_URL "https://nexus.gjccorp.com.br/repository/maven-snapshots/"
# ojc end

set -Ux ATAC_KEY_BINDINGS "~/.config/atac/vim_key_bindings.toml"

# pnpm
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

set -gx PATH "$HOME/.config/kitty" $PATH

# set --export BUFLS "~/go/"
# set --export PATH 

set -Ux EDITOR hx

# bun
set -x BUN_INSTALL "$HOME/.bun"
set -x PATH $BUN_INSTALL/bin $PATH
# bun end

set -x RUBY "/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
set -x PATH $RUBY $PATH

set -x ANDROID_HOME "/Users/$USER/Library/Android/sdk"
set -x PATH "$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
set -gx SWIFTENV_ROOT "$HOME/.swiftenv"
set -gx PATH "$SWIFTENV_ROOT/bin" $PATH
if which swiftenv >/dev/null
    status --is-interactive; and source (swiftenv init -|psub)
end

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

set -Ux fish_user_paths $fish_user_paths $PATH:$HOME/.config/zide/bin

set -Ux fish_user_paths /opt/homebrew/bin $fish_user_paths

# helix
set -x HELIX_RUNTIME "~/personal-stuff/rust/helix/runtime"
# set -x RUSTFLAGS "-C target-feature=-crt-static"
# set -x HELIX_DISABLE_AUTO_GRAMMAR_BUILD 1
# set -x CARGO_MANIFEST_DIR ~/githubs/helix/helix-term/
# helix end

# set --export JAVA_HOME (dirname (dirname (readlink -f (which ava))))
# set -gx PATH $JAVA_HOME $PATH

set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools

zoxide init fish | source

function hx
    # Replace home path with ~
    set path (string replace -r "^$HOME" "~" $PWD)

    # Split the path
    set parts (string split "/" $path)
    set shortened ""

    # Loop through each part
    for i in (seq (count $parts))
        set part $parts[$i]

        if test $i -eq 1
            # First part (usually ~)
            set shortened $part
        else if test $i -eq (count $parts)
            # Last part: full name
            set shortened $shortened"/"$part
        else
            # Middle parts: first letter only
            if test -n "$part"
                set shortened $shortened"/"(string sub -l 1 $part)
            end
        end
    end

    # Add emoji and set title
    kitty @ set-tab-title "HX ~> $shortened"

    # Run helix
    command hx $argv

    # Reset tab title
    kitty @ set-tab-title ""
end

# Set default brew (native)
# set -gx PATH /opt/homebrew/bin $PATH

# Function to call x86_64 (Rosetta) brew
# function brew-x86
#     arch -x86_64 /usr/local/bin/brew $argv
# end

# FIXME
# Start a Rosetta fish shell
# function rosetta
#     arch -x86_64 /opt/homebrew/bin/fish
# end

# Use Node x86 (Rosetta) version
# function use-node@18-x86
#     set -gx PATH /usr/local/opt/node@18/bin $PATH
#     set -gx NODE_EXTRA_CA_CERTS ~/cacert.pem
#     echo "🐢 Now using Node x86 from Homebrew Rosetta"
# end
