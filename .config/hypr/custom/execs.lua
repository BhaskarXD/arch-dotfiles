-- ── Quake terminal ───────────────────────────────────────────────────────────
-- Spawn once at login into special:quake (hidden). SUPER+grave then just toggles.
hl.on("hyprland.start", function()
    hl.exec_cmd("[workspace special:quake silent] kitty --title quake-terminal")
end)
