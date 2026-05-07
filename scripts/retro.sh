#!/usr/bin/env bash
# shellcheck enable=all

set -euo pipefail

theme="${1:-phosphor}"

pane() {
  tmux select-pane -P "$1"
}

case "$theme" in
green)
  pane "bg=black,fg=colour46"
  ;;

ibm)
  pane "bg=black,fg=colour40"
  ;;

amber)
  pane "bg=black,fg=colour214"
  ;;

orange)
  pane "bg=black,fg=colour208"
  ;;

white)
  pane "bg=black,fg=colour255"
  ;;

bluecrt)
  pane "bg=colour17,fg=colour153"
  ;;

cyan)
  pane "bg=black,fg=colour51"
  ;;

phosphor)
  pane "bg=black,fg=colour250"
  ;;

phosphor-dim)
  pane "bg=black,fg=colour245"
  ;;

c64)
  pane "bg=colour18,fg=colour117"
  ;;

c64-dark)
  pane "bg=colour19,fg=colour111"
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
  echo "green ibm amber orange white bluecrt cyan phosphor phosphor-dim c64 c64-dark reset"
  ;;

*)
  echo "Unknown theme: $theme" >&2
  echo "Available themes:" >&2
  echo "  green ibm amber orange white bluecrt cyan phosphor phosphor-dim c64 c64-dark reset" >&2
  exit 1
  ;;
esac
