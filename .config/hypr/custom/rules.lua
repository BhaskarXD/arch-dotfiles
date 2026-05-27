-- ── Quake terminal ───────────────────────────────────────────────────────────
-- Launched via: [workspace special:quake silent] kitty --title quake-terminal
-- Toggle with: SUPER+grave
hl.window_rule({ match = { title = "^(quake-terminal)$" }, float = true })
hl.window_rule({ match = { title = "^(quake-terminal)$" }, size  = { "(monitor_w*1.0)", "(monitor_h*0.4)" } })
hl.window_rule({ match = { title = "^(quake-terminal)$" }, move  = { 0, 0 } })
