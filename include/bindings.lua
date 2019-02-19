-- {{{ Mouse bindings definitions
root.buttons(gears.table.join(
    awful.button({ }, 3, function () main_menu:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

-- {{{ Key bindings definitions
local globalkeys = gears.table.join(

    -- General

    awful.key(
        { modkey, "Shift" },
        "/",
        hotkeys_popup.show_help,
        { description = "show help", group="awesome" }
    ),

    awful.key(
        { modkey },
        "w",
        function () main_menu:show() end,
        { description = "show main menu", group = "awesome" }
    ),

    awful.key(
        { modkey, "Shift" },
        "r",
        awesome.restart,
        { description = "reload awesome", group = "awesome" }
    ),

    awful.key(
        { modkey, "Shift" },
        "q",
        awesome.quit,
        { description = "quit awesome", group = "awesome" }
    ),

    awful.key(
        { modkey },
        "q",
        function () awful.util.spawn("xscreensaver-command -lock") end,
        { description = "lock awesome", group = "awesome" }
    ),

    -- Launcher

    awful.key(
        { modkey, "Shift" },
        "Return",
        function () startup_programs() end,
        { description = "startup programs", group = "launcher" }
    ),

    awful.key(
        { modkey },
        "Return",
        function () awful.spawn(terminal) end,
        { description = "terminal", group = "launcher" }
    ),

    awful.key(
        { modkey },
        "`",
        function () quake:toggle() end,
        { description = "quake terminal", group = "launcher" }
    ),

    awful.key(
        { modkey },
        "F2",
        function () awful.screen.focused().mypromptbox:run() end,
        { description = "run program", group = "launcher" }
    ),

    awful.key(
        { modkey },
        "p",
        function() awful.util.spawn("snipping") end,
        { description = "snipping tool", group = "launcher" }
    ),

    -- Layout

    awful.key(
        { modkey },
        "l",
        function () awful.tag.incmwfact( 0.05) end,
        { description = "increase width", group = "layout" }
    ),

    awful.key(
        { modkey },
        "h",
        function () awful.tag.incmwfact(-0.05) end,
        { description = "decrease width", group = "layout" }
    ),

    awful.key(
        { modkey, "Shift" },
        "space",
        function () awful.layout.inc(-1) end,
        { description = "previous layout", group = "layout" }
    ),

    awful.key(
        { modkey },
        "space",
        function () awful.layout.inc( 1) end,
        { description = "next layout", group = "layout" }
    ),

    -- Programs

    awful.key(
        { modkey },
        "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end,
        { description = "back program", group = "program" }
    ),

    awful.key(
        { modkey },
        "j",
        function () awful.client.focus.byidx( 1) end,
        { description = "previous program", group = "program" }
    ),

    awful.key(
        { modkey },
        "k",
        function () awful.client.focus.byidx(-1) end,
        { description = "next program", group = "program" }
    ),

    -- Screen

    awful.key(
        { modkey, "Shift" },
        "j",
        function () awful.screen.focus_relative( 1) end,
        { description = "previous screen", group = "screen" }
    ),

    awful.key(
        { modkey, "Shift" },
        "k",
        function () awful.screen.focus_relative(-1) end,
        { description = "next screen", group = "screen" }
    ),

    -- Spotify

    awful.key(
        { modkey },
        "s",
        function() spotify_play_pause() end,
        { description = "play / pause music", group = "spotify" }
    ),

    awful.key(
        { modkey },
        "a",
        function() spotify_previous() end,
        { description = "previous song", group = "spotify" }
    ),

    awful.key(
        { modkey },
        "d",
        function() spotify_next() end,
        { description = "next song", group = "spotify" }
    ),

    -- Tags

    awful.key(
        { modkey },
        "Left",
        awful.tag.viewprev,
        { description = "previous tag", group = "tag" }
    ),

    awful.key(
        { modkey },
        "Right",
        awful.tag.viewnext,
        { description = "next tag", group = "tag" }
    )
)

clientkeys = gears.table.join(

    -- Programs

    awful.key(
        { modkey },
        "F4",
        function (c) c:kill() end,
        { description = "close", group = "program" }
    ),

    awful.key(
        { modkey },
        "f",
        function (c)
            c.fullscreen = not c.fullscreen
            c:raise()
        end,
        { description = "fullscreen", group = "program" }
    ),

    awful.key(
        { modkey },
        "m",
        function (c)
            c.maximized = not c.maximized
            c:raise()
        end ,
        { description = "(un)maximize", group = "program" }
    ),

    awful.key(
        { modkey },
        "n",
        function (c) c.minimized = true end ,
        { description = "minimize", group = "program" }
    ),

    awful.key(
        { modkey },
        "o",
        function (c) c:move_to_screen() end,
        { description = "move to screen", group = "program" }
    ),

    awful.key(
        { modkey },
        "t",
        function (c) c.ontop = not c.ontop end,
        { description = "toggle on top", group = "program" }
    )
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
    globalkeys = gears.table.join(globalkeys,
        -- View tag only.
        awful.key(
            { modkey },
            "#" .. i + 9,
            function ()
                local screen = awful.screen.focused()
                local tag = screen.tags[i]
                if tag then
                    tag:view_only()
                end
            end,
            { description = "tag #"..i, group = "tag" }
        ),

        -- Move client to tag.
        awful.key(
            { modkey, "Shift" },
            "#" .. i + 9,
            function ()
                if client.focus then
                    local tag = client.focus.screen.tags[i]
                    if tag then
                        client.focus:move_to_tag(tag)
                    end
                end
            end,
            { description = "move to tag #"..i, group = "tag" }
        )
    )
end

clientbuttons = gears.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 3, awful.mouse.client.resize))

-- Set keys
root.keys(globalkeys)
-- }}}
