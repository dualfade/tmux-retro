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

```
prefix + P  phosphor
prefix + A  amber
prefix + G  green
prefix + I  ibm
prefix + O  orange
prefix + W  white
prefix + B  bluecrt
prefix + Y  cyan
prefix + D  redcrt
prefix + F  pipboy
prefix + M  matrix
prefix + X  phosphor-dim
prefix + C  c64
prefix + V  c64-dark
prefix + N  c64-bright
prefix + H  hax
prefix + E  neon
prefix + S  hax-soft
prefix + Z  hax-red
prefix + U  cyber
prefix + T  tron
prefix + Q  acid
prefix + R  reset
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

<img width="1435" height="411" alt="image" src="https://github.com/user-attachments/assets/3285eb01-31eb-4c19-96d1-048eed387c3a" />
<img width="1433" height="413" alt="image" src="https://github.com/user-attachments/assets/ee9d154d-6300-49d2-acd3-8f351704a29b" />
<img width="1435" height="410" alt="image" src="https://github.com/user-attachments/assets/8b14ad3f-f6a9-4745-bb6f-6f19a1b23310" />
<img width="1435" height="416" alt="image" src="https://github.com/user-attachments/assets/1ec42a01-43f5-46a3-aa24-25f814e225f6" />
<img width="1430" height="404" alt="image" src="https://github.com/user-attachments/assets/fd96fd59-0753-44e4-8eba-9dc79c36df54" />


--

## License

MIT
