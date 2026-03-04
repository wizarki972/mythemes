# ---------- CORE OPTIONS ----------
setopt autocd prompt_subst
setopt appendhistory sharehistory
setopt hist_ignore_dups hist_ignore_space
setopt hist_reduce_blanks inc_append_history
setopt extended_history

HISTFILE="$HOME/.local/state/zsh/.zsh_history"
HISTSIZE=1000
SAVEHIST=1000

# ---------- LOAD SPLIT FILES ----------
source "$HOME/.config/zshrcd/env.zsh"
source "$HOME/.config/zshrcd/aliases.zsh"
source "$HOME/.config/zshrcd/binds.zsh"

# ---------- COMPLETION ----------
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' special-dirs true

# ---------- PROMPT ----------
eval "$(starship init zsh)"

# ---------- PLUGINS ----------
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#663399"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---------- ZOXIDE ----------
eval "$(zoxide init zsh)"
alias cd='z'

# ---------- FZF ----------
source <(fzf --zsh)

# ---------- GLOB IMPROVEMENTS ----------
setopt extendedglob     # **/*.go, ^pattern
setopt globdots         # include dotfiles in globs

# ---------- JOB CONTROL ----------
setopt longlistjobs     # verbose jobs output
setopt notify           # notify when background job finishes

# ---------- COMPLETION UX ----------
setopt complete_in_word
setopt always_to_end

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}