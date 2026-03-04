# ---------- EMACS KEYMAP ----------
bindkey -e

# ---------- CURSOR MOVEMENT ----------
bindkey '^A' beginning-of-line
bindkey '^D' end-of-line
bindkey '^[b' backward-word
bindkey '^[f' forward-word

# ---------- DELETION ----------
bindkey '^?' backward-delete-char
bindkey '^[d' kill-word
bindkey '^W' backward-kill-word
bindkey '^K' kill-line
bindkey '^H' backward-kill-line

# ---------- HISTORY ----------
bindkey '^[[A' up-line-or-history
bindkey '^[[B' down-line-or-history
bindkey '^P' up-line-or-history
bindkey '^N' down-line-or-history
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward

# ---------- UNDO / CLEAR ----------
bindkey '^_' undo
bindkey '^L' clear-screen

# ---------- WORD CASE ----------
bindkey '^[u' up-case-word
bindkey '^[l' down-case-word
bindkey '^[c' capitalize-word

# ---------- SCREEN ----------
bindkey '^Z' push-input

# ---------- WORD NAVIGATION ----------
# Ctrl → : forward word
bindkey -M emacs  '^[[1;5C' forward-word
bindkey -M viins  '^[[1;5C' forward-word
bindkey -M vicmd  '^[[1;5C' forward-word

# Ctrl ← : backward word
bindkey -M emacs  '^[[1;5D' backward-word
bindkey -M viins  '^[[1;5D' backward-word
bindkey -M vicmd  '^[[1;5D' backward-word

# ---------- WORD DELETION ----------
# Ctrl + Delete : delete forward word
bindkey -M emacs  '^[[3;5~' kill-word
bindkey -M viins  '^[[3;5~' kill-word
bindkey -M vicmd  '^[[3;5~' kill-word