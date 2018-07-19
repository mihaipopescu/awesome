-- {{{ Widgets definitions
-- Quake console
quake = lain.util.quake(
    {
        app = terminal,
        followtag = true,
        onlyone = true
    }
)

-- Tag list buttons
local taglist_buttons = gears.table.join(
    awful.button(
        { },
        1,
        function(t) t:view_only() end
    ),

    awful.button(
        { modkey },
        1,
        function(t)
            if client.focus then
                client.focus:move_to_tag(t)
            end
        end
    ),

    awful.button(
        { },
        3,
        awful.tag.viewtoggle
    ),

    awful.button(
        { modkey },
        3,
        function(t)
            if client.focus then
                client.focus:toggle_tag(t)
            end
        end
    ),

    awful.button(
        { },
        4,
        function(t)
            awful.tag.viewnext(t.screen)
        end
    ),

    awful.button(
        { },
        5,
        function(t) awful.tag.viewprev(t.screen) end
    )
)

-- Task list buttons
local tasklist_buttons = gears.table.join(
    awful.button(
        { },
        1,
        function (c)
            if c == client.focus then
                c.minimized = true
            else
                -- Without this, the following
                -- :isvisible() makes no sense
                c.minimized = false
                if not c:isvisible() and c.first_tag then
                    c.first_tag:view_only()
                end
                -- This will also un-minimize
                -- the client, if needed
                client.focus = c
                c:raise()
            end
        end
    ),

    awful.button(
        { },
        3,
        function ()
            local instance = nil
            return function ()
                if instance and instance.wibox.visible then
                    instance:hide()
                    instance = nil
                else
                    instance = awful.menu.clients({ theme = { width = 250 } })
                end
            end
        end
    ),

    awful.button(
        { },
        4,
        function ()
            awful.client.focus.byidx(1)
        end
    ),

    awful.button(
        { },
        5,
        function ()
            awful.client.focus.byidx(-1)
        end
    )
)

-- Widget container
local widget_display        = wibox.widget.imagebox(beautiful.widget_display)
local widget_display_center = wibox.widget.imagebox(beautiful.widget_display_center)
local widget_display_left   = wibox.widget.imagebox(beautiful.widget_display_left)
local widget_display_right  = wibox.widget.imagebox(beautiful.widget_display_right)

-- Separators
local spr       = wibox.widget.imagebox(beautiful.spr)
local spr4px    = wibox.widget.imagebox(beautiful.spr4px)
local spr5px    = wibox.widget.imagebox(beautiful.spr5px)

-- Keyboard widget
local keyboard_widget = awful.widget.keyboardlayout()

-- Clock widget
local clock_icon = wibox.widget.imagebox(beautiful.widget_clock)
local text_clock = wibox.widget.textclock(" %a %d %b %H:%M ")
local clock_widget = wibox.container.background(text_clock)
clock_widget.bgimage=beautiful.widget_display

-- Calendar widget
calendar({}):attach(text_clock)

-- Cpu widget
local cpu_icon = wibox.widget.imagebox(beautiful.widget_cpu)
local cpu = lain.widget.cpu({
    settings =
        function()
            widget:set_markup(" " .. cpu_now.usage .. "%" .. " ")
        end
})
local cpu_widget = wibox.container.background(cpu.widget)
cpu_widget.bgimage=beautiful.widget_display

-- Memory widget
local mem_icon = wibox.widget.imagebox(beautiful.widget_mem)
local mem = lain.widget.mem({
    settings =
        function()
            widget:set_markup(" " .. mem_now.perc .. "%" .. " ")
        end
})
local mem_widget = wibox.container.background(mem.widget)
mem_widget.bgimage=beautiful.widget_display

-- Ssd widget
local ssd_icon = wibox.widget.imagebox(beautiful.widget_ssd)
local ssd = lain.widget.fs({
    settings = function()
        widget:set_markup(string.format(" %d%% ", fs_now["/home"].percentage))
    end
})
local ssd_widget = wibox.container.background(ssd.widget)
ssd_widget.bgimage=beautiful.widget_display

-- Network widget
local netdl_icon = wibox.widget.imagebox(beautiful.widget_netdl)
local netup_icon = wibox.widget.imagebox(beautiful.widget_netul)
local netdl = wibox.widget.textbox()
local netup = wibox.widget.textbox()
local net = lain.widget.net({
    iface = "enp2s0",
    units = 1024^2,
    settings = function()
        netdl:set_markup(string.format(" %.1f Mb ", net_now.received))
        netup:set_markup(string.format(" %.1f Mb ", net_now.sent))
    end
})
local netdl_widget = wibox.container.background(netdl)
netdl_widget.bgimage=beautiful.widget_display
local netup_widget = wibox.container.background(netup)
netup_widget.bgimage=beautiful.widget_display

-- Music widget
local current_song = "Spotify"
local current_song_color = beautiful.fg_focus
local current_song_state = 0
local next_icon = wibox.widget.imagebox(beautiful.mpd_nex)
local play_pause_icon = wibox.widget.imagebox(beautiful.mpd_play)
local prev_icon = wibox.widget.imagebox(beautiful.mpd_prev)
local stop_icon = wibox.widget.imagebox(beautiful.mpd_stop)
local spotify_text = wibox.widget.textbox()
local spotify_widget = wibox.container.background(spotify_text)
spotify_widget.bgimage=beautiful.widget_display

next_icon:buttons(gears.table.join(awful.button({ }, 1, function() spotify_next() end)))
play_pause_icon:buttons(gears.table.join(awful.button({ }, 1, function() spotify_play_pause() end)))
prev_icon:buttons(gears.table.join(awful.button({ }, 1, function() spotify_previous() end)))
stop_icon:buttons(gears.table.join(awful.button({ }, 1, function() spotify_stop() end)))

local function update_play_pause_icon(widget, stdout, _, _, _)
    stdout = string.gsub(stdout, "\n", "")
    if (stdout == "Playing") then
        current_song_state = 1
        widget.image = beautiful.mpd_pause
    else
        current_song_state = 0
        widget.image = beautiful.mpd_play
    end
end

local function update_spotify_text(widget, stdout, _, _, _)
    if string.find(stdout, "Error: Spotify is not running.") ~= nil then
        current_song = "Spotify"
        current_song_color = beautiful.fg_urgent
    else
        current_song = stdout
        if (current_song_state == 1) then
            current_song_color = beautiful.fg_focus
        else
            current_song_color = beautiful.fg_normal
        end
    end
    widget:set_markup("<span foreground=" .. "'"..current_song_color .. "'" .. ">" .. current_song .. "</span>")
end

play_pause_icon:connect_signal(
    "button::press",
    function(x, y, button, mods, find_widgets_result)
        awful.spawn.easy_async("sp status", 
            function(stdout, stderr, exitreason, exitcode)
                update_play_pause_icon(play_pause_icon, stdout, stderr, exitreason, exitcode)
            end
        )
    end
)

watch("sp current-oneline", 1, update_spotify_text, spotify_text)
watch("sp status", 1, update_play_pause_icon, play_pause_icon)

-- Volume widget
volumecfg = volume_control({
    step    = "2%",
    lclick  = "",
    mclick  = "",
    rclick  = terminal .. " alsamixer",
    tooltip = true
})

local volume_icon = wibox.widget.imagebox(beautiful.widget_volume)
local volume_widget = wibox.container.background(volumecfg.widget)
volume_widget.bgimage=beautiful.widget_display

function set_widgets(s)
    -- Prompt box
    s.mypromptbox =
        awful.widget.prompt({
            prompt = " Execute: "
        })

    -- Layout box
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(
        gears.table.join(
            awful.button(
                { },
                1,
                function () awful.layout.inc( 1) end
            ),

            awful.button(
                { },
                3,
                function () awful.layout.inc(-1) end
            ),

            awful.button(
                { },
                4,
                function () awful.layout.inc( 1) end
            ),

            awful.button(
                { },
                5,
                function () awful.layout.inc(-1) end
            )
        )
    )

    -- Tag list
    s.tag_list = awful.widget.taglist(s, awful.widget.taglist.filter.all, taglist_buttons)

    -- Task list
    s.task_list = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, tasklist_buttons)

    -- Wibox
    s.top_wibox = awful.wibar({ position = "top", screen = s, height = 22, bg = beautiful.panel, fg = beautiful.fg_normal })
    s.top_wibox:setup {
        layout = wibox.layout.align.horizontal,
        {
            -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            -- Separator
            spr,
            spr4px,
            spr,
            -- Tag list
            s.tag_list,
            -- Separator
            spr,
            spr4px,
            spr,
            -- Music
            prev_icon,
            spr,
            play_pause_icon,
            spr,
            stop_icon,
            spr,
            next_icon,
            spr,
            widget_display_left,
            spotify_widget,
            widget_display_right,
            -- Separator
            spr,
            spr4px,
            spr,
            -- Volume
            volume_icon,
            widget_display_left,
            volume_widget,
            widget_display_right,
            -- Separator
            spr,
            spr4px,
            spr,
        },
        {
            -- Middle widget
            layout = wibox.layout.fixed.horizontal,
        },
        {
            -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            -- Separator
            spr,
            spr4px,
            spr,
            -- Prompt box
            s.mypromptbox,
            -- Separator
            spr,
            spr4px,
            spr,
            -- Cpu
            cpu_icon,
            widget_display_left,
            cpu_widget,
            widget_display_right,
            spr4px,
            -- Separator
            spr,
            -- Memory
            mem_icon,
            widget_display_left,
            mem_widget,
            widget_display_right,
            spr4px,
            -- Separator
            spr,
            -- Ssd widget
            ssd_icon,
            widget_display_left,
            ssd_widget,
            widget_display_right,
            spr4px,
            -- Separator
            spr,
            -- Network
            netdl_icon,
            widget_display_left,
            netdl_widget,
            widget_display_center,
            netup_widget,
            widget_display_right,
            netup_icon,
            -- Separator
            spr,
            spr4px,
            spr,
            -- Clock
            clock_icon,
            widget_display_left,
            clock_widget,
            widget_display_right,
            spr4px,
            -- Separator
            spr,
            spr4px,
            spr,
          -- Layout box
            s.mylayoutbox,
        },
    }

    s.bottom_wibox = awful.wibar({ position = "bottom", screen = s, height = 22, bg = beautiful.panel, fg = beautiful.fg_normal })
    s.bottom_wibox:setup {
        layout = wibox.layout.align.horizontal,
        {
            -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            -- Menu
            menu,
            -- Separator
            spr,
            spr4px,
        },
        {
            -- Middle widget
            layout = wibox.layout.fixed.horizontal,
            -- Task list
            s.task_list,
        },
        {
            -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            -- Separator
            spr,
            spr4px,
            spr,
            -- System tray
            wibox.widget.systray(),
            -- Separator
            spr,
            spr4px,
        },
    }
end
-- }}}
