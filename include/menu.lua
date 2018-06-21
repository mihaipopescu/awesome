-- {{{ Menu definitions
-- Set the terminal for applications that require it
menubar.utils.terminal = terminal

awesome_menu = 
{
    { "Hotkeys",    function() return false, hotkeys_popup.show_help end    },
    { "Lock",       "xscreensaver-command -lock"                            },
    { "Restart",    awesome.restart                                         },
    { "Quit",       function() awesome.quit() end                           },
    { "Reboot",     "shutdown -r 0"                                         },
    { "Shutdown",   "shutdown -h 0"                                         }
}

main_menu = freedesktop.menu.build(
    {
        before = 
        { 
            { "awesome", awesome_menu, beautiful.awesome_icon }
        }
    }
)

return awful.widget.launcher(
    { 
        image = beautiful.awesome_icon,
        menu =  main_menu
    }
)
-- }}}