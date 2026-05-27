-- ── Quake terminal ───────────────────────────────────────────────────────────
-- Launched once at login (custom/execs.lua); toggled with SUPER+grave
-- Size and position match gaps_out (5px) so edges align with tiled windows
hl.window_rule({ match = { title = "^(quake-terminal)$" }, float = true })
hl.window_rule({ match = { title = "^(quake-terminal)$" }, size  = { "(monitor_w - 10)", "(monitor_h*0.4)" } })
hl.window_rule({ match = { title = "^(quake-terminal)$" }, move  = { 5, 5 } })
