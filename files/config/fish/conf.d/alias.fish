# Modern 'ls' command
    alias ls='exa -G  --color auto --icons -s type'
    alias ll='exa -l --color always --icons -a -s type'

# Modern 'cat' command
  alias cat='bat --theme="OneHalfDark"'

# Top
  alias top='btop -t'

# Grep 
  alias grep='rg'

# Find 
  alias find='fd'

# Other
# alias neofetch="fastfetch"
alias pacref="sudo reflector -c Uzbekistan -a 12 --sort rate --save /etc/pacman.d/mirrorlist"
