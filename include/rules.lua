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
            screen =  screens.SCREEN_THREE,
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
            screen =  screens.SCREEN_THREE,
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
            maximized_horizontal = true,
            maximized_vertical = true,
            screen =  screens.SCREEN_ONE,
            tag = tags.names[tags.TAG_VSCODE]
        }
    },
    {
        rule =
        {
            class = "[Rr]ider"
        },
        properties =
        {
            maximized_horizontal = true,
            maximized_vertical = true,
            screen =  screens.SCREEN_ONE,
            tag = tags.names[tags.TAG_VSCODE]
        }
    },
    {
        rule =
        {
            class = "[Mm]eld"
        },
        properties =
        {
            maximized_horizontal = true,
            maximized_vertical = true,
            screen =  screens.SCREEN_ONE,
            tag = tags.names[tags.TAG_DEV]
        }
    },
    {
        rule =
        {
            class = "[Tt]hg"
        },
        properties =
        {
            maximized_horizontal = true,
            maximized_vertical = true,
            screen =  screens.SCREEN_ONE,
            tag = tags.names[tags.TAG_DEV]
        }
    },
    {
        rule =
        {
            class = "[Tt]ortoise[Hh]g"
        },
        properties =
        {
            maximized_horizontal = true,
            maximized_vertical = true,
            screen =  screens.SCREEN_ONE,
            tag = tags.names[tags.TAG_DEV]
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
            screen =  screens.SCREEN_TWO,
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
            screen =  screens.SCREEN_TWO,
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
            screen =  screens.SCREEN_TWO,
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
            screen =  screens.SCREEN_ONE,
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
            maximized_horizontal = true,
            maximized_vertical = true,
            screen =  screens.SCREEN_TWO,
            tag = tags.names[tags.TAG_WEB_UNITY]
        }
    },
    {
        rule =
        {
            class = "[Ss]lack"
        },
        properties =
        {
            maximized_horizontal = true,
            maximized_vertical = true,
            screen =  screens.SCREEN_TWO,
            tag = tags.names[tags.TAG_SLACK]
        }
    },
    {
        rule =
        {
            class = "[Ss]kype"
        },
        properties =
        {
            maximized_horizontal = true,
            maximized_vertical = true,
            screen =  screens.SCREEN_TWO,
            tag = tags.names[tags.TAG_SKYPE]
        }
    },
    {
        rule =
        {
            class = "[Ss]potify"
        },
        properties =
        {
            maximized_horizontal = true,
            maximized_vertical = true,
            screen =  screens.SCREEN_TWO,
            tag = tags.names[tags.TAG_MUSIC]
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
            screen =  screens.SCREEN_TWO,
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
            screen =  screens.SCREEN_TWO,
            tag = tags.names[tags.TAG_EXTRA]
        }
    }
}
-- }}}
