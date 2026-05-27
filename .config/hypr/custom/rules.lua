-- ── Quake terminal ───────────────────────────────────────────────────────────
-- Toggled with SUPER+grave; spawned by pgrep guard in keybinds.lua
-- Size and position match gaps_out (5px) so edges align with tiled windows
hl.window_rule({ match = { title = "^(quake-terminal)$" }, workspace = "special:quake silent" })
hl.window_rule({ match = { title = "^(quake-terminal)$" }, float = true })
hl.window_rule({ match = { title = "^(quake-terminal)$" }, size  = { "(monitor_w - 10)", "(monitor_h*0.4)" } })
hl.window_rule({ match = { title = "^(quake-terminal)$" }, move  = { 5, 5 } })
