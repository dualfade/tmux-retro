#!/usr/bin/env bash
# shellcheck enable=all

set -euo pipefail

theme="${1:-phosphor}"

pane() {
  tmux select-pane -P "$1"
}

case "$theme" in
green)
  # Green phosphor terminal
  pane "bg=black,fg=colour40"
  ;;

green-bright)
  # Brighter green phosphor
  pane "bg=black,fg=colour46"
  ;;

amber)
  # Amber phosphor monitor
  pane "bg=black,fg=colour214"
  ;;

amber-dark)
  # Darker orange amber
  pane "bg=black,fg=colour208"
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
  tmux select-pane -P "fg=default,bg=colour235"

  if [ -f "$HOME/.config/tmux/tmux.conf" ]; then
    tmux source-file "$HOME/.config/tmux/tmux.conf"
  elif [ -f "$HOME/.tmux.conf" ]; then
    tmux source-file "$HOME/.tmux.conf"
  fi
  ;;

list)
  echo "green green-bright amber amber-dark phosphor phosphor-dim c64 c64-dark cyan"
  ;;

*)
  echo "Unknown theme: $theme" >&2
  echo "Available themes:" >&2
  echo "  green green-bright amber amber-dark phosphor phosphor-dim c64 c64-dark cyan" >&2
  exit 1
  ;;
esac
