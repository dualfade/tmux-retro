#!/usr/bin/env bash
# shellcheck enable=all

# NOTE: Check for conflicts --
# tmux list-keys | grep bind-key
# uncomment or change below to suite your needs --

#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RETRO_SCRIPT="$CURRENT_DIR/scripts/retro.sh"

tmux bind-key G run-shell "$RETRO_SCRIPT green"
tmux bind-key A run-shell "$RETRO_SCRIPT amber"
tmux bind-key W run-shell "$RETRO_SCRIPT white"
tmux bind-key B run-shell "$RETRO_SCRIPT bluecrt"
tmux bind-key Y run-shell "$RETRO_SCRIPT cyan"
tmux bind-key D run-shell "$RETRO_SCRIPT redcrt"
tmux bind-key F run-shell "$RETRO_SCRIPT pipboy"
tmux bind-key M run-shell "$RETRO_SCRIPT matrix"
tmux bind-key P run-shell "$RETRO_SCRIPT phosphor"
tmux bind-key X run-shell "$RETRO_SCRIPT phosphor-dim"
tmux bind-key C run-shell "$RETRO_SCRIPT c64"
tmux bind-key V run-shell "$RETRO_SCRIPT c64-dark"
tmux bind-key N run-shell "$RETRO_SCRIPT c64-bright"
tmux bind-key H run-shell "$RETRO_SCRIPT hax"
tmux bind-key E run-shell "$RETRO_SCRIPT neon"
tmux bind-key S run-shell "$RETRO_SCRIPT hax-soft"
tmux bind-key Z run-shell "$RETRO_SCRIPT hax-red"
tmux bind-key U run-shell "$RETRO_SCRIPT cyber"
tmux bind-key T run-shell "$RETRO_SCRIPT tron"
tmux bind-key Q run-shell "$RETRO_SCRIPT acid"
tmux bind-key R run-shell "$RETRO_SCRIPT reset"
# tmux bind-key I run-shell "$RETRO_SCRIPT ibm"
# tmux bind-key O run-shell "$RETRO_SCRIPT orange"

default_theme="$(tmux show-option -gqv @retro_theme)"
[ -n "$default_theme" ] && tmux run-shell "$RETRO_SCRIPT $default_theme"
