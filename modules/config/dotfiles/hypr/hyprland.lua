-- autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("udiskie")
    hl.exec_cmd("noctalia")
end)

-- env variables
-- hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
-- hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
-- hl.env("XCURSOR_THEME", "Adwaita")


-- Keybinds

-- Session
hl.bind("SHIFT + CTRL + Q", hl.dsp.exit())

-- Launch Applications/Commands
hl.bind("ALT + CTRL + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("ALT + Return", hl.dsp.exec_cmd("foot"))
hl.bind("ALT + E", hl.dsp.exec_cmd("thunar"))
hl.bind("ALT + B", hl.dsp.exec_cmd("microsoft-edge"))
hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"))
hl.bind("SUPER + Space", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center"))
hl.bind("ALT + L", hl.dsp.exec_cmd("noctalia msg session lock"))
hl.bind("ALT + W", hl.dsp.exec_cmd("noctalia msg panel-toggle wallpaper"))
hl.bind("ALT + V", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))

-- hl.bind("SUPER + Space", hl.dsp.exec_cmd("hyprlauncher -t"))
-- hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))


hl.bind("Print", hl.dsp.exec_cmd("noctalia msg screenshot-region")) 
-- hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | swappy -f -'))
-- hl.bind("Print", hl.dsp.exec_cmd("hyprshot -zm region"))
-- hl.bind("SHIFT + CTRL + Print", hl.dsp.exec_cmd("hyprshot -m window"))
-- hl.bind("CTRL + Print", hl.dsp.exec_cmd("hyprshot -m output"))

-- Window Management
hl.bind("ALT + Q", hl.dsp.window.close())
hl.bind("ALT + F", hl.dsp.window.fullscreen())
hl.bind("ALT + M", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind("ALT + C", hl.dsp.window.center())
hl.bind("ALT + CTRL + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind("ALT + Tab", hl.dsp.exec_cmd("noctalia msg window-switcher"))

hl.bind("ALT + Left", hl.dsp.focus({ direction = "left" }))
hl.bind("ALT + Right", hl.dsp.focus({ direction = "right" }))
hl.bind("ALT + Up", hl.dsp.focus({ direction = "up" }))
hl.bind("ALT + Down", hl.dsp.focus({ direction = "down" }))

hl.bind("ALT + SHIFT + Left", hl.dsp.window.resize({ x = -10, y = 0, relative = true }), { repeating = true })
hl.bind("ALT + SHIFT + Right", hl.dsp.window.resize({ x = 10, y = 0, relative = true }), { repeating = true })
hl.bind("ALT + SHIFT + Up", hl.dsp.window.resize({ x = 0, y = -10, relative = true }), { repeating = true })
hl.bind("ALT + SHIFT + Down", hl.dsp.window.resize({ x = 0, y = 10, relative = true }), { repeating = true })

hl.bind("ALT + CTRL + Left", hl.dsp.window.swap({ direction = "left" }))
hl.bind("ALT + CTRL + Right", hl.dsp.window.swap({ direction = "right" }))
hl.bind("ALT + CTRL + Up", hl.dsp.window.swap({ direction = "up" }))
hl.bind("ALT + CTRL + Down", hl.dsp.window.swap({ direction = "down" }))

-- hl.bind("ALT + Tab", function()
--     hl.dispatch(hl.dsp.window.cycle_next())   -- Change focus to another window
--     hl.dispatch(hl.dsp.window.bring_to_top()) -- Bring it to the top
-- end)

-- Workspace Management
hl.bind("ALT + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind("ALT + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind("ALT + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind("ALT + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind("ALT + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind("ALT + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind("ALT + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind("ALT + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind("ALT + 9", hl.dsp.focus({ workspace = 9 }))

hl.bind("ALT + CTRL + 1", hl.dsp.window.move({ workspace = 1, follow = false }))
hl.bind("ALT + CTRL + 2", hl.dsp.window.move({ workspace = 2, follow = false }))
hl.bind("ALT + CTRL + 3", hl.dsp.window.move({ workspace = 3, follow = false }))
hl.bind("ALT + CTRL + 4", hl.dsp.window.move({ workspace = 4, follow = false }))
hl.bind("ALT + CTRL + 5", hl.dsp.window.move({ workspace = 5, follow = false }))
hl.bind("ALT + CTRL + 6", hl.dsp.window.move({ workspace = 6, follow = false }))
hl.bind("ALT + CTRL + 7", hl.dsp.window.move({ workspace = 7, follow = false }))
hl.bind("ALT + CTRL + 8", hl.dsp.window.move({ workspace = 8, follow = false }))
hl.bind("ALT + CTRL + 9", hl.dsp.window.move({ workspace = 9, follow = false }))

hl.bind("SUPER + Tab", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + Tab", hl.dsp.focus({ workspace = "e-1" }))

-- Mouse Binds
hl.bind("ALT + mouse:272", hl.dsp.window.drag(), {
    mouse = true,
})
hl.bind("ALT + mouse:273", hl.dsp.window.resize(), {
    mouse = true,
})

-- Laptop Volume Keybinds
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Media control
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Monitor
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = 1,
    vrr      = 1,
})


hl.monitor({
    output   = "eDP-1",
    mode     = "2256x1504@60",
    position = "0x0",
    scale    = 1,
    vrr      = 3,
})

-- Input: Keyboard, Mouse, Touchpad

hl.config({
    input = {
        kb_layout          = "us",
        kb_variant         = "",
        kb_model           = "",
        kb_options         = "",
        kb_rules           = "",
        numlock_by_default = true,
        repeat_rate        = 25,
        repeat_delay       = 250,
        accel_profile = "custom 0.2144477506 0.000 0.307 0.615 1.077 1.539 2.002 2.505 3.208 3.910 4.613 5.315 6.018 6.720 7.423 8.125 8.828 9.530 10.233 10.935 12.387",

        follow_mouse       = 1,

        sensitivity        = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad           = {
            natural_scroll = true,
            tap_to_click = true,
            tap_and_drag = true,
            scroll_factor = 1,
            clickfinger_behavior = true
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- General Setting and Decoration
hl.config({
    general = {
        gaps_in          = 5,
        gaps_out         = 10,

        border_size      = 2,

        col              = {
            active_border   = { colors = { "rgba(7aa2f7ee)", "rgba(bb9af7ee)" }, angle = 45 },
            inactive_border = "rgba(414868aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing    = false,

        layout           = "dwindle",
    },

    xwayland = {
        force_zero_scaling = true
    },

    decoration = {
        rounding         = 10,
        rounding_power   = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 0.95,
        inactive_opacity = 0.9,

        shadow           = {
            enabled      = false,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur             = {
            enabled  = true,
            size     = 3,
            passes   = 1,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = false,
    },

    dwindle = {
        preserve_split = true,
    },

    misc = {
        force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})


-- Animation Setting

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, spring = "easy", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })


-- Rules
hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name           = "suppress-maximize-events",
    match          = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "Launcher",
    match = {
        class = "(steam)|(heroic)|(.*PrismLauncher)"
    },
    workspace = 5,
    center = true,
    no_initial_focus = true,
})

hl.window_rule({
    name = "discord",
    match = {
        class = "discord"
    },
    workspace = 1,
    no_initial_focus = true,
})

hl.window_rule({
    name = "game",
    match = {
        class = "^steam_app_[0-9]*$",
    },
    workspace = 6,
    float = true,
    fullscreen = true,
    no_initial_focus = true,
    size = { 1320, 750 },
    center = true,
})

hl.window_rule({
    name = "float satty",
    match = {
        title = "satty",
    },
    float = true,
    no_initial_focus = true,
    size = { 1320, 750 },
    center = true,
})

hl.window_rule({
    name = "xdg portal stuff/other applications",
    match = {
        class = "(.*Nautilus)|(xdg-desktop-portal-gtk)",
    },
    float = true,
    no_initial_focus = true,
    size = { 1320, 750 },
    center = true,
})

-- hl.window_rule({
--     name = "float layout workspace 4",
--     match = {
--         workspace = 4,
--     },
--     float = true,
--     size = { "monitor_w * 0.8", "monitor_h * 0.75" }
-- })

for i=1, 5 do 
    hl.workspace_rule({ workspace = i, monitor = "eDP-1", persistent = true, default = (i==1)})
end

-- Noctalia Settings
hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})
