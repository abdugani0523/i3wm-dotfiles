# Prompt theme
source (/usr/local/bin/starship init fish --print-full-init | psub)
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
