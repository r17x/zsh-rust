command -v cargo &>/dev/null || {
  print -P "%F{33}▓▒░ %F{34}checking %F{33}rustup%F{220}...%f"
  export CARGO_HOME="$HOME/.cargo/env"
  export PATH="$CARGO_HOME/bin:$PATH"
  command -v cargo &>/dev/null || {
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}rustup%F{220}…%f"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    print -P "%F{33}▓▒░ %F{34} ✅ %F{33}rustup%F{220} installation succeeded %f%b"
  }
}
