# tmux-retro

Retro CRT-style color themes for tmux. Inspired by classic terminals such as green phosphor, amber monitors, Commodore 64, and early hacker aesthetics.

### Inspired by
- [CRT DataBase](https://crtdatabase.com/)
- [Cathode ray tube](https://en.wikipedia.org/wiki/Cathode_ray_tube)

---

## Features

- 20+ retro-inspired themes
- Simple key bindings for switching themes
- Lightweight plugin with no dependencies
- Optional default theme on startup
- Easy reset back to your existing tmux configuration

---

## Available Themes

```

green
ibm
amber
orange
white
bluecrt
cyan
redcrt
pipboy
matrix
phosphor
phosphor-dim
c64
c64-dark
c64-bright
hax
neon
hax-soft
hax-red
cyber
tron
acid
reset

````

---

## Installation (TPM)

Using https://github.com/tmux-plugins/tpm

Add to your `~/.tmux.conf`:

```tmux
set -g @plugin 'dualfade/tmux-retro'
set -g @retro_theme 'phosphor'   # optional
````

Reload tmux:

```bash
tmux source-file ~/.tmux.conf
```

Install plugins:

```
prefix + I
```

---

## Key Bindings

Enter retro mode:

```

bind-key + G  green
bind-key + A  amber
bind-key + P  phosphor
bind-key + X  phosphor-dim
bind-key + C  c64
bind-key + B  c64-dark
bind-key + Y  cyan
bind-key + R  reset
```

---

## Manual Usage

Run directly:

```bash
~/.tmux/plugins/tmux-retro/scripts/retro.sh phosphor
~/.tmux/plugins/tmux-retro/scripts/retro.sh amber
~/.tmux/plugins/tmux-retro/scripts/retro.sh c64
```

List available themes:

```bash
~/.tmux/plugins/tmux-retro/scripts/retro.sh list
```

---

## Reset Behavior

The reset command restores pane styling and reloads your tmux configuration:

```bash
tmux select-pane -P "fg=default,bg=colour235"
tmux source-file ~/.tmux.conf
```

---

## Key Binding Conflicts

To check existing bindings:

```bash
tmux list-keys | grep bind-key
```

If conflicts occur, you can modify key bindings in `retro.tmux` or use a prompt-based selector:

```tmux
bind-key r command-prompt -p "retro theme:" "run-shell '~/.tmux/plugins/tmux-retro/scripts/retro.sh %%'"
```

---

## Development

Clone locally:

```bash
git clone https://github.com/dualfade/tmux-retro ~/.tmux/plugins/tmux-retro
```

Reload tmux:

```bash
tmux source-file ~/.tmux.conf
```

---

## Screenshots

- Samples


--

## License

MIT
