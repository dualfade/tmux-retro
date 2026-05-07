#!/usr/bin/env bash
# shellcheck enable=all

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RETRO_SCRIPT="$CURRENT_DIR/scripts/retro.sh"

# Enter CRT theme mode with: prefix + r
tmux bind-key r switch-client -T retro

# Authentic CRT / terminal themes only
tmux bind-key -T retro G run-shell "$RETRO_SCRIPT green"
tmux bind-key -T retro A run-shell "$RETRO_SCRIPT amber"
tmux bind-key -T retro P run-shell "$RETRO_SCRIPT phosphor"
tmux bind-key -T retro X run-shell "$RETRO_SCRIPT phosphor-dim"
tmux bind-key -T retro C run-shell "$RETRO_SCRIPT c64"
tmux bind-key -T retro B run-shell "$RETRO_SCRIPT c64-dark"
tmux bind-key -T retro Y run-shell "$RETRO_SCRIPT cyan"
tmux bind-key -T retro Q run-shell "$RETRO_SCRIPT reset"

default_theme="$(tmux show-option -gqv @retro_theme)"
[ -n "$default_theme" ] && tmux run-shell "$RETRO_SCRIPT $default_theme"
