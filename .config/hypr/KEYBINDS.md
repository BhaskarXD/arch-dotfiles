# Hyprland Keybind Reference

> **Tip:** Hit `SUPER+/` at any time to see the cheatsheet overlay.
> Custom binds live in `~/.config/hypr/custom/keybinds.lua`.
> End-4 defaults live in `~/.config/hypr/hyprland/keybinds.lua`.

---

## Focus / Navigation

| Bind | Action | Source |
|------|--------|--------|
| `SUPER + H/J/K/L` | Focus window left/down/up/right | custom |
| `SUPER + Arrow` | Focus window (arrow keys) | end-4 |
| `SUPER + Tab` | Workspace overview | end-4 |
| `ALT + Tab` | Cycle windows forward | custom |
| `ALT + SHIFT + Tab` | Cycle windows backward | custom |

---

## Window Management

| Bind | Action | Source |
|------|--------|--------|
| `SUPER + SHIFT + H/J/K/L` | Move window in tiling | custom |
| `SUPER + SHIFT + Arrow` | Move window (arrow keys) | end-4 |
| `SUPER + ALT + H/J/K/L` | Move floating window (40px steps, hold) | custom |
| `SUPER + Q` | Close window | end-4 |
| `SUPER + SHIFT + ALT + Q` | Force-kill window | end-4 |
| `SUPER + F` | Fullscreen | end-4 |
| `SUPER + D` | Maximize toggle | end-4 |
| `SUPER + ALT + F` | Fullscreen spoof (app thinks fullscreen, WM doesn't) | end-4 |
| `SUPER + ALT + Space` | Float / tile toggle | end-4 |
| `SUPER + P` | Pin window (float on all workspaces) | end-4 |
| `SUPER + ; / '` | Adjust split ratio narrower/wider | end-4 |
| `SUPER + drag (LMB)` | Move window | end-4 |
| `SUPER + drag (RMB)` | Resize window | end-4 |
| `SUPER + - / =` | Screen zoom out/in | end-4 |

---

## Workspaces

| Bind | Action | Source |
|------|--------|--------|
| `SUPER + 1-9` | Switch to workspace | end-4 |
| `SUPER + SHIFT + 1-9/0` | Send window to workspace | custom |
| `SUPER + ALT + 1-9` | Send window to workspace (no follow) | end-4 |
| `CTRL + SUPER + Left/Right` | Prev / next workspace | end-4 |
| `SUPER + Scroll` | Prev / next workspace | end-4 |
| `SUPER + S` | Toggle scratchpad | end-4 |
| `SUPER + ALT + S` | Send window to scratchpad | end-4 |

---

## Monitors

| Bind | Action | Source |
|------|--------|--------|
| `SUPER + ALT + ,` | Focus left monitor | custom |
| `SUPER + ALT + .` | Focus right monitor | custom |
| `SUPER + SHIFT + ,` | Move window to left monitor | custom |
| `SUPER + SHIFT + .` | Move window to right monitor | custom |

---

## Session

| Bind | Action | Source |
|------|--------|--------|
| `SUPER + Escape` | Lock screen | custom |
| `SUPER + CTRL + Q` | Lock screen (macOS/Windows style) | custom |
| `SUPER + SHIFT + Escape` | Sleep / suspend | custom |
| `SUPER + SHIFT + L` | Move window right (HJKL — L is NOT lock) | custom |
| `CTRL + ALT + Delete` | Session menu (lock / logout / shutdown) | end-4 |
| `CTRL + SHIFT + ALT + SUPER + Delete` | Shut down immediately | end-4 |

---

## Apps

| Bind | Action | Source |
|------|--------|--------|
| `SUPER + T / Return` | Terminal (kitty) | end-4 |
| `CTRL + ALT + T` | Terminal | end-4 |
| `SUPER + grave (`)` | Quake terminal (dropdown, toggles) | custom |
| `SUPER + W` | Firefox | custom |
| `SUPER + SHIFT + W` | Chrome | custom |
| `SUPER + C` | Code editor (windsurf/vscode) | end-4 |
| `SUPER + E` | File manager | end-4 |
| `SUPER + X` | Text editor | end-4 |
| `SUPER + I` | Settings | end-4 |
| `CTRL + SHIFT + Escape` | Task manager | end-4 |
| `CTRL + SUPER + V` | Volume mixer | end-4 |
| `CTRL + SUPER + K` | Spotify | custom |

---

## Utilities

| Bind | Action | Source |
|------|--------|--------|
| `SUPER + SHIFT + S` | Screenshot region → clipboard | end-4 |
| `Print` | Screenshot monitor → clipboard | end-4 |
| `CTRL + Print` | Screenshot monitor → file | end-4 |
| `SUPER + SHIFT + C` | Color picker → clipboard | end-4 |
| `SUPER + SHIFT + X` | OCR region → clipboard | end-4 |
| `SUPER + SHIFT + T` | Translate screen content | end-4 |
| `SUPER + SHIFT + A` | Google Lens (snip to search) | end-4 |
| `SUPER + SHIFT + R` | Record region | end-4 |
| `CTRL + ALT + R` | Record fullscreen | end-4 |
| `SUPER + V` | Clipboard history | end-4 |
| `SUPER + Period (.)` | Emoji picker | end-4 |

---

## Media

| Bind | Action | Source |
|------|--------|--------|
| `SUPER + SHIFT + P` | Play / pause | end-4 |
| `SUPER + SHIFT + N` | Next track | end-4 |
| `SUPER + SHIFT + B` | Previous track | end-4 |
| `SUPER + SHIFT + M` | Mute output | end-4 |
| `SUPER + ALT + M` | Mute microphone | end-4 |
| `XF86 media keys` | All standard media keys work | end-4 |

---

## Shell / Quickshell Toggles

| Bind | Action | Source |
|------|--------|--------|
| `SUPER + SUPER` | Search / launcher | end-4 |
| `SUPER + /` | Cheatsheet (all binds) | end-4 |
| `SUPER + A / B / O` | Left sidebar | end-4 |
| `SUPER + N` | Right sidebar | end-4 |
| `SUPER + M` | Media controls panel | end-4 |
| `SUPER + G` | Widget overlay | end-4 |
| `CTRL + SUPER + T` | Wallpaper picker | end-4 |
| `CTRL + SUPER + SHIFT + D` | Toggle light / dark mode | end-4 |
| `CTRL + SUPER + R` | Restart quickshell widgets | end-4 |
| `CTRL + SUPER + P` | Cycle panel family | end-4 |

---

## Quake Terminal Guide

`SUPER + grave` (the `` ` `` key, top-left next to `1`)

- **First press**: launches kitty in a hidden special workspace, then shows it
- **Next presses**: toggles the terminal up/down
- Appears as 100% width, 40% height at the top of screen
- It's a normal kitty window — tabs, splits, everything works
- Close it with `SUPER+Q` or just toggle it away with `SUPER+grave`
