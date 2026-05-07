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

redcrt)
  pane "bg=black,fg=colour196"
  ;;

pipboy)
  pane "bg=colour22,fg=colour118"
  ;;

matrix)
  pane "bg=black,fg=colour82"
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

c64-bright)
  pane "bg=blue,fg=cyan"
  ;;

hax)
  pane "bg=black,fg=colour46"
  ;;

neon)
  pane "bg=colour16,fg=colour82"
  ;;

hax-soft)
  pane "bg=colour234,fg=colour118"
  ;;

hax-red)
  pane "bg=black,fg=colour196"
  ;;

cyber)
  pane "bg=colour16,fg=colour141"
  ;;

tron)
  pane "bg=colour16,fg=colour51"
  ;;

acid)
  pane "bg=black,fg=colour118"
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
  echo "green ibm amber orange white bluecrt cyan redcrt pipboy matrix phosphor phosphor-dim c64 c64-dark c64-bright hax neon hax-soft hax-red cyber tron acid reset"
  ;;

*)
  echo "Unknown theme: $theme" >&2
  echo "Run: $0 list" >&2
  exit 1
  ;;
esac
