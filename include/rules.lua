-- {{{ Rules definitions
awful.rules.rules =
{
    {
        rule =
        {

        },
        properties =
        {
            border_color    = beautiful.border_normal,
            border_width    = beautiful.border_width,
            focus           = awful.client.focus.filter,
            raise           = true,
            buttons         = clientbuttons,
            keys            = clientkeys,
            screen          = awful.screen.preferred,
            placement       = awful.placement.no_overlap+awful.placement.no_offscreen
        }
    },
    {
        rule_any =
        {
            type = { "dialog" }
        },
        properties =
        {
            floating = true,
            titlebars_enabled = true
        }
    },
    {
        rule =
        {
            class = "[Xx][Tt]erm"
        },
        properties =
        {
            screen = screens.SCREEN_LEFT,
            tag = tags.names[tags.TAG_TERMINAL]
        }
    },
    {
        rule =
        {
            class = "[Ss]ublime"
        },
        properties =
        {
            screen = screens.SCREEN_LEFT,
            tag = tags.names[tags.TAG_SUBLIME]
        }
    },
    {
        rule =
        {
            class = "[Cc]ode"
        },
        properties =
        {
            screen = screens.SCREEN_CENTRE,
            tag = tags.names[tags.TAG_VSCODE],
            maximized_vertical = true,
            maximized_horizontal = true
        }
    },
    {
        rule =
        {
            class = "[Rr]ider"
        },
        properties =
        {
            screen = screens.SCREEN_CENTRE,
            tag = tags.names[tags.TAG_VSCODE],
            maximized_vertical = true,
            maximized_horizontal = true
        }
    },
    {
        rule =
        {
            class = "[Mm]eld"
        },
        properties =
        {
            screen = screens.SCREEN_CENTRE,
            tag = tags.names[tags.TAG_DEV],
            maximized_vertical = true,
            maximized_horizontal = true
        }
    },
    {
        rule =
        {
            class = "[Tt]hg"
        },
        properties =
        {
            screen = screens.SCREEN_CENTRE,
            tag = tags.names[tags.TAG_DEV],
            maximized_vertical = true,
            maximized_horizontal = true
        }
    },
    {
        rule =
        {
            class = "[Tt]ortoise[Hh]g"
        },
        properties =
        {
            screen = screens.SCREEN_CENTRE,
            tag = tags.names[tags.TAG_DEV],
            maximized_vertical = true,
            maximized_horizontal = true
        }
    },
    {
        rule =
        {
            class = "[Uu]nity"
        },
        properties =
        {
            floating = true,
            screen = screens.SCREEN_RIGHT,
            tag = tags.names[tags.TAG_UNITY]
        }
    },
    {
        rule =
        {
            class = "[Uu]nity[Hh]elper"
        },
        properties =
        {
            floating = true,
            screen = screens.SCREEN_RIGHT,
            tag = tags.names[tags.TAG_UNITY]
        }
    },
    {
        rule =
        {
            class = "[Uu]nity[Ss]hader[Cc]omp"
        },
        properties =
        {
            floating = true,
            screen = screens.SCREEN_RIGHT,
            tag = tags.names[tags.TAG_UNITY]
        }
    },
    {
        rule =
        {
            class = "[Ee]vince"
        },
        properties =
        {
            screen = screens.SCREEN_CENTRE,
            tag = tags.names[tags.TAG_EXTRA]
        }
    },
    {
        rule =
        {
            class = "[Cc]hromium"
        },
        properties =
        {
            screen = screens.SCREEN_RIGHT,
            tag = tags.names[tags.TAG_WEB_UNITY],
            maximized_vertical = true,
            maximized_horizontal = true
        }
    },
    {
        rule =
        {
            class = "[Ss]lack"
        },
        properties =
        {
            screen = screens.SCREEN_RIGHT,
            tag = tags.names[tags.TAG_SLACK],
            maximized_vertical = true,
            maximized_horizontal = true
        }
    },
    {
        rule =
        {
            class = "[Ss]kype"
        },
        properties =
        {
            screen = screens.SCREEN_RIGHT,
            tag = tags.names[tags.TAG_SKYPE],
            maximized_vertical = true,
            maximized_horizontal = true
        }
    },
    {
        rule =
        {
            class = "[Ss]potify"
        },
        properties =
        {
            screen = screens.SCREEN_RIGHT,
            tag = tags.names[tags.TAG_MUSIC],
            maximized_vertical = true,
            maximized_horizontal = true
        }
    },
    {
        rule =
        {
            class = "[Ss]team"
        },
        properties =
        {
            floating = true,
            screen = screens.SCREEN_RIGHT,
            tag = tags.names[tags.TAG_EXTRA]
        }
    },
    {
        rule =
        {
            class = "[Vv]irtual[Bb]ox"
        },
        properties =
        {
            screen = screens.SCREEN_RIGHT,
            tag = tags.names[tags.TAG_EXTRA]
        }
    }
}
-- }}}
