```markdown
# tmux-retro

Retro CRT-style color themes for **tmux** — inspired by classic terminals like green phosphor, amber monitors, Commodore 64, and “1337 hax0r” vibes.

---

## ✨ Features

- 20+ retro-inspired themes
- One-key theme switching via tmux key bindings
- Clean, minimal plugin (no dependencies)
- Supports default theme on startup
- Easy reset back to your normal config

---

## 🎨 Available Themes

```

green            # classic green phosphor
ibm              # deep monochrome green
amber            # amber CRT
orange           # darker amber
white            # white phosphor (DEC / VT)
bluecrt          # old mainframe blue
cyan             # UNIX workstation vibe
redcrt           # security monitor red
pipboy           # Fallout-style green
matrix           # neon hacker green
phosphor         # gray phosphor (recommended)
phosphor-dim     # dimmer phosphor
c64              # Commodore 64
c64-dark         # darker C64
c64-bright       # bright C64
hax              # classic hacker green
neon             # modern neon green
hax-soft         # softer hacker tone
hax-red          # red alert
cyber            # purple cyberpunk
tron             # blue neon
acid             # 90s acid green
reset            # restore default config

````

---

## 📦 Installation (TPM)

Using [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm?utm_source=chatgpt.com):

Add to your `~/.tmux.conf`:

```tmux
set -g @plugin 'dualfade/tmux-retro'
set -g @retro_theme 'phosphor'   # optional default
````

Then reload:

```bash
tmux source-file ~/.tmux.conf
```

Install plugins:

```
prefix + I
```

---

## ⌨️ Key Bindings

After installation:

```
prefix + P  → phosphor
prefix + A  → amber
prefix + G  → green
prefix + I  → ibm
prefix + O  → orange
prefix + W  → white
prefix + B  → bluecrt
prefix + Y  → cyan
prefix + D  → redcrt
prefix + F  → pipboy
prefix + M  → matrix
prefix + X  → phosphor-dim
prefix + C  → c64
prefix + V  → c64-dark
prefix + N  → c64-bright
prefix + H  → hax
prefix + E  → neon
prefix + S  → hax-soft
prefix + Z  → hax-red
prefix + U  → cyber
prefix + T  → tron
prefix + Q  → acid
prefix + R  → reset
```

---

## 🧪 Manual Usage

Run directly:

```bash
~/.tmux/plugins/tmux-retro/scripts/retro.sh phosphor
~/.tmux/plugins/tmux-retro/scripts/retro.sh amber
~/.tmux/plugins/tmux-retro/scripts/retro.sh c64
```

List themes:

```bash
~/.tmux/plugins/tmux-retro/scripts/retro.sh list
```

---

## 🔄 Reset Behavior

`reset` will:

* restore pane style
* reload your `~/.tmux.conf`

```bash
tmux select-pane -P "fg=default,bg=colour235"
tmux source-file ~/.tmux.conf
```

---

## ⚠️ Key Binding Conflicts

Check existing bindings:

```bash
tmux list-keys | grep bind-key
```

If conflicts occur, you can:

* rebind keys in `retro.tmux`
* or use a command prompt:

```tmux
bind-key r command-prompt -p "retro theme:" "run-shell '~/.tmux/plugins/tmux-retro/scripts/retro.sh %%'"
```

---

## 🧠 Philosophy

This plugin focuses on:

* **retro aesthetics without sacrificing usability**
* themes that don’t fight syntax highlighting
* fast switching with zero overhead

Recommended daily drivers:

* `phosphor`
* `pipboy`
* `hax-soft`

---

## 📸 Preview Ideas

*(Add screenshots here for each theme)*

---

## 🛠️ Development

Clone locally:

```bash
git clone https://github.com/dualfade/tmux-retro ~/.tmux/plugins/tmux-retro
```

Reload:

```bash
tmux source-file ~/.tmux.conf
```

---

## 📜 License

MIT

---

## 👾 Author

Built by **dualfade** — because terminals should feel like terminals again.

```
```

