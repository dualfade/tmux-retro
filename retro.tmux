#!/usr/bin/env bash
# shellcheck enable=all

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RETRO_SCRIPT="$CURRENT_DIR/scripts/retro.sh"

# Enter CRT theme mode with: prefix + r
tmux bind-key r switch-client -T retro

# Authentic CRT / terminal themes only
tmux bind-key -T retro g run-shell "$RETRO_SCRIPT green"
tmux bind-key -T retro a run-shell "$RETRO_SCRIPT amber"
tmux bind-key -T retro p run-shell "$RETRO_SCRIPT phosphor"
tmux bind-key -T retro d run-shell "$RETRO_SCRIPT phosphor-dim"
tmux bind-key -T retro c run-shell "$RETRO_SCRIPT c64"
tmux bind-key -T retro b run-shell "$RETRO_SCRIPT c64-dark"
tmux bind-key -T retro y run-shell "$RETRO_SCRIPT cyan"
tmux bind-key -T retro q run-shell "$RETRO_SCRIPT reset"

default_theme="$(tmux show-option -gqv @retro_theme)"
[ -n "$default_theme" ] && tmux run-shell "$RETRO_SCRIPT $default_theme"
