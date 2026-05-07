# tmux-retro

Retro CRT-style color themes for tmux. Focused on historically accurate terminal displays such as green phosphor, amber monitors, and Commodore 64.

### Inspired by
- https://crtdatabase.com/
- https://en.wikipedia.org/wiki/Cathode_ray_tube

---

## Features

- Authentic CRT color themes only
- Clean key bindings using a dedicated tmux key table
- Lightweight plugin with no dependencies
- Optional default theme on startup

---

## Available Themes

```

amber
amber-p3
phosphor
phosphor-dim
c64
c64-dark
cyan
apple-ii

````

---

## Installation (TPM)

Using https://github.com/tmux-plugins/tpm

Add to your `~/.tmux.conf`:

```tmux
set -g @plugin 'dualfade/tmux-retro'
set -g @retro_theme 'phosphor'   # optional default
````

Reload tmux:

```bash
tmux source-file ~/.config/tmux/tmux.conf
```

Install plugins:

```
prefix + I
```

---

## Key Bindings

Enter retro mode:

```
prefix + r
```

Then press:

```
A  amber
G  amber-p3 
P  phosphor
X  phosphor-dim
C  c64
B  c64-dark
Y  cyan
E  apple-ii
Q  reset
```

---

## Manual Usage

Run directly:

```bash
~/.config/tmux/plugins/tmux-retro/scripts/retro.sh phosphor
~/.config/tmux/plugins/tmux-retro/scripts/retro.sh amber
~/.config/tmux/plugins/tmux-retro/scripts/retro.sh c64
```

List available themes:

```bash
~/.config/tmux/plugins/tmux-retro/scripts/retro.sh list
```

---

## Notes

* Themes are intentionally minimal and monochrome to reflect real CRT hardware
* No reset key is bound to avoid conflicts with existing tmux configurations
* To restore your default appearance, reload your tmux config:

```bash
tmux source-file ~/.config/tmux/tmux.conf
```

---

## Key Binding Conflicts

To inspect your current bindings:

```bash
tmux list-keys | grep bind-key
```

If needed, you can modify bindings in `retro.tmux`.

---

## Development

Clone locally:

```bash
git clone https://github.com/dualfade/tmux-retro ~/.config/tmux/plugins/tmux-retro
```

Reload tmux:

```bash
tmux source-file ~/.config/tmux/tmux.conf
```

---

## Screenshots

- Samples

<img width="1442" height="411" alt="image" src="https://github.com/user-attachments/assets/e127cac0-8166-4f8e-bd94-924ab0010469" />
<img width="1437" height="408" alt="image" src="https://github.com/user-attachments/assets/438f15d4-d2bb-4338-b7f1-5c065be3cc09" />
<img width="1434" height="412" alt="image" src="https://github.com/user-attachments/assets/d0fabbce-6736-4ff5-9145-ff6414930461" />
<img width="1438" height="408" alt="image" src="https://github.com/user-attachments/assets/04a6e765-9a92-44c0-aa39-93826b776fa6" />
<img width="1440" height="410" alt="image" src="https://github.com/user-attachments/assets/b67975d4-1ada-49b1-b481-d6258586cdc8" />


---

## License

MIT
