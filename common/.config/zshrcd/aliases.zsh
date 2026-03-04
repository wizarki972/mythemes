# ---------- EZA ----------
export EZA_COLORS="ur=32:uw=32:ux=32:gr=36:gw=36:gx=36:tr=31:tw=31:tx=31"
alias ls='eza -a --git --icons=auto --group-directories-first'
alias ll='eza -al'
alias lt='eza -a --tree --level=2 --icons=auto'

# ---------- CORE ----------
alias d='echo $PWD'
alias 1='z -1'
alias 2='z -2'
alias 3='z -3'
alias ..='z ..'
alias ...='z ../..'

alias mkdir='mkdir -p'
alias mv='mv -v'
alias grep='grep -i'

# ---------- UTILS ----------
alias src-shell='source ~/.zshrc'
alias fonts-refresh="fc-cache -fv" # refreshed font cache

alias git-stage-clear='git restore --staged'

alias sch-pkg="pacman -Q | grep -i" # search through installed packages.
alias sch-pac="pacman -Ss" # search through pacman repo
alias sch-font="fc-list | grep -i" # search through available font styles.
alias sch-env="env | grep -i" # search through environment variables.
alias sch-port="sudo ss -tulpn | grep -i"