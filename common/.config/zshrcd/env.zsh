# ---------- XDG ----------
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_SRC_HOME="$HOME/.local/src"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# ---------- PATH ----------
export PATH="$HOME/.local/bin:$HOME/.config/npm/bin:$HOME/.cargo/bin:$PATH"

# ---------- ENV ----------
export LESS="--ignore-case"
export CARGO_HOME="$XDG_CONFIG_HOME/rust-cargo"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/cuda"

# ---------- WORD BOUNDARIES ----------
# Make path navigation sane (/ stops words)
WORDCHARS=${WORDCHARS//\/}

# ---------- CUSTOM ----------
export ZSH_HISTORY=$HOME/.local/state/zsh/.zsh_history