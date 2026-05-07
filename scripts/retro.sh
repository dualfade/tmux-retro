#!/usr/bin/env bash
# shellcheck enable=all

set -euo pipefail

theme="${1:-phosphor}"

pane() {
  tmux select-pane -P "$1"
}

case "$theme" in
amber-p3)
  # P3 Amber
  pane "bg=black,fg=colour136"
  ;;

amber)
  # Amber phosphor monitor
  pane "bg=black,fg=colour214"
  ;;

phosphor)
  # White / gray phosphor
  pane "bg=colour233,fg=colour250"
  ;;

phosphor-dim)
  # Dim gray phosphor
  pane "bg=black,fg=colour245"
  ;;

c64)
  # Commodore 64 blue screen
  pane "bg=colour18,fg=colour117"
  ;;

c64-dark)
  # Darker Commodore 64 blue
  pane "bg=colour19,fg=colour111"
  ;;

cyan)
  # Rare cyan phosphor
  pane "bg=black,fg=colour51"
  ;;

apple-ii)
  # Apple Monitor II (A2M2010)
  pane "bg=black,fg=colour40"
  ;;

reset)
  # Clear per-pane override created by select-pane -P
  tmux select-pane -P "default"

  # Restore tmux/user theme defaults instead of hardcoding colors
  tmux set -g window-style default
  tmux set -g window-active-style default

  # Force tmux to redraw
  tmux refresh-client -S
  ;;

list)
  echo "amber amber-p3 phosphor phosphor-dim c64 c64-dark cyan apple-ii reset"
  ;;

*)
  echo "Unknown theme: $theme" >&2
  echo "Available themes:" >&2
  echo "=> amber amber-p3 phosphor phosphor-dim c64 c64-dark cyan apple-ii reset" >&2
  exit 1
  ;;
esac
