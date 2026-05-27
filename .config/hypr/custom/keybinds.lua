-- Personal keybind overrides and additions
-- Edit keybinds shortcut
hl.bind("CTRL+SUPER+ALT+Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), {description = "Edit user keybinds"})

--##! Apps
-- Override browser: SUPER+W = Firefox, SUPER+SHIFT+W = Chrome
hl.bind("SUPER + W", hl.dsp.exec_cmd("firefox"), { description = "App: Firefox" })
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd("google-chrome-stable"), { description = "App: Chrome" })

-- Spotify
hl.bind("SUPER + SHIFT + K", hl.dsp.exec_cmd("spotify-launcher"), { description = "App: Spotify" })

--##! Window focus (vim-style HJKL)
-- Unbind end-4 defaults that conflict, then re-bind to focus
hl.unbind("SUPER + J")  -- was: bar toggle
hl.unbind("SUPER + K")  -- was: on-screen keyboard
hl.unbind("SUPER + L")  -- was: lock session (still available via CTRL+ALT+Delete → session menu)
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }), { description = "Window: Focus left" })
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }), { description = "Window: Focus down" })
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }), { description = "Window: Focus up" })
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }), { description = "Window: Focus right" })

--##! Workspace — send window with SUPER+SHIFT+number
-- (SUPER+ALT+number already exists in defaults; this adds SUPER+SHIFT+number)
for i = 1, 9 do
    hl.bind("SUPER + SHIFT + " .. i, function()
        hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i), follow = false }))
    end, { description = "Window: Send to workspace " .. i })
end
hl.bind("SUPER + SHIFT + 0", function()
    hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(10), follow = false }))
end, { description = "Window: Send to workspace 10" })
