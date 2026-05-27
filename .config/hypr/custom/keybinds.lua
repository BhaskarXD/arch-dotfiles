-- Personal keybind overrides and additions
-- Edit this file: CTRL+SUPER+ALT+Slash
hl.bind("CTRL + SUPER + ALT + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), { description = "Edit user keybinds" })

-- ── Apps ─────────────────────────────────────────────────────────────────────
-- Override end-4's generic browser with specific apps
hl.bind("SUPER + W",       hl.dsp.exec_cmd("firefox"),              { description = "App: Firefox" })
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd("google-chrome-stable"), { description = "App: Chrome" })
-- SUPER+M = media controls (end-4), SUPER+S = scratchpad (end-4) — both taken
hl.bind("CTRL + SUPER + K", hl.dsp.exec_cmd("spotify-launcher"),    { description = "App: Spotify" })

-- ── Window: focus (HJKL) ─────────────────────────────────────────────────────
-- Unbind end-4 defaults that sit on J/K/L
hl.unbind("SUPER + J")  -- was: bar toggle
hl.unbind("SUPER + K")  -- was: on-screen keyboard
hl.unbind("SUPER + L")  -- was: lock session
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }), { description = "Window: Focus left"  })
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }), { description = "Window: Focus down"  })
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }), { description = "Window: Focus up"    })
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }), { description = "Window: Focus right" })

-- ── Window: move in tiling (HJKL) ────────────────────────────────────────────
-- SUPER+SHIFT+L was sleep in end-4 — unbind and remap sleep below
hl.unbind("SUPER + SHIFT + L")  -- was: sleep (remapped to SUPER+SHIFT+Escape)
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" }), { description = "Window: Move left"  })
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }), { description = "Window: Move down"  })
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "u" }), { description = "Window: Move up"    })
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" }), { description = "Window: Move right" })

-- ── Window: move floating (HJKL) ─────────────────────────────────────────────
hl.bind("SUPER + ALT + H", hl.dsp.exec_cmd("hyprctl dispatch moveactive -40 0"),  { repeating = true, description = "Float: Move left"  })
hl.bind("SUPER + ALT + J", hl.dsp.exec_cmd("hyprctl dispatch moveactive 0 40"),   { repeating = true, description = "Float: Move down"  })
hl.bind("SUPER + ALT + K", hl.dsp.exec_cmd("hyprctl dispatch moveactive 0 -40"),  { repeating = true, description = "Float: Move up"    })
hl.bind("SUPER + ALT + L", hl.dsp.exec_cmd("hyprctl dispatch moveactive 40 0"),   { repeating = true, description = "Float: Move right" })

-- ── Monitors ──────────────────────────────────────────────────────────────────
hl.bind("SUPER + ALT + COMMA",    hl.dsp.exec_cmd("hyprctl dispatch focusmonitor l"),          { description = "Monitor: Focus left"            })
hl.bind("SUPER + ALT + PERIOD",   hl.dsp.exec_cmd("hyprctl dispatch focusmonitor r"),          { description = "Monitor: Focus right"           })
hl.bind("SUPER + SHIFT + COMMA",  hl.dsp.exec_cmd("hyprctl dispatch movewindow mon:l silent"), { description = "Monitor: Move window left"       })
hl.bind("SUPER + SHIFT + PERIOD", hl.dsp.exec_cmd("hyprctl dispatch movewindow mon:r silent"), { description = "Monitor: Move window right"      })

-- ── Session ───────────────────────────────────────────────────────────────────
hl.bind("SUPER + Escape",           hl.dsp.exec_cmd("loginctl lock-session"),                    { description = "Session: Lock"  })
hl.bind("SUPER + CTRL + Q",         hl.dsp.exec_cmd("loginctl lock-session"),                    { description = "Session: Lock (macOS/Win style)" })
hl.bind("SUPER + SHIFT + Escape",   hl.dsp.exec_cmd("systemctl suspend || loginctl suspend"),    { locked = true, description = "Session: Sleep" })

-- ── Quake terminal (grave = ` key, top-left next to 1) ───────────────────────
-- pgrep guard: only spawns kitty if none is running; workspace rule (rules.lua) places it.
-- Both binds fire every press: toggle shows/hides, exec is a no-op when already running.
hl.bind("SUPER + grave", hl.dsp.workspace.toggle_special("quake"), { description = "App: Quake terminal" })
hl.bind("SUPER + grave", hl.dsp.exec_cmd("pgrep -xf 'kitty --title quake-terminal' || kitty --title quake-terminal"), {})

-- ── Window cycle (alt-tab) ────────────────────────────────────────────────────
hl.bind("ALT + Tab",       hl.dsp.focus({ window = "next" }), { description = "Window: Cycle next" })
hl.bind("ALT + SHIFT + Tab", hl.dsp.focus({ window = "prev" }), { description = "Window: Cycle prev" })

-- ── Workspace: send window with SUPER+SHIFT+number ───────────────────────────
-- Mirrors SUPER+number for switching; SUPER+ALT+number also exists in end-4
for i = 1, 9 do
    hl.bind("SUPER + SHIFT + " .. i, function()
        hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i), follow = false }))
    end, { description = "Window: Send to workspace " .. i })
end
hl.bind("SUPER + SHIFT + 0", function()
    hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(10), follow = false }))
end, { description = "Window: Send to workspace 10" })
