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
            tag = tags[screens.SCREEN_LEFT].tags[tags[screens.SCREEN_LEFT].TAG_TERMINAL]
        }
    },
    {
        rule =
        {
            class = "[Ss]ublime"
        },
        properties =
        {
            tag = tags[screens.SCREEN_LEFT].tags[tags[screens.SCREEN_LEFT].TAG_SUBLIME]
        }
    },
    {
        rule =
        {
            class = "[Cc]ode"
        },
        properties =
        {
            tag = tags[screens.SCREEN_CENTRE].tags[tags[screens.SCREEN_CENTRE].TAG_VSCODE]
        }
    },
    {
        rule =
        {
            class = "[Mm]eld"
        },
        properties =
        {
            tag = tags[screens.SCREEN_CENTRE].tags[tags[screens.SCREEN_CENTRE].TAG_DEV]
        }
    },
    {
        rule =
        {
            class = "[Tt]hg"
        },
        properties =
        {
            tag = tags[screens.SCREEN_CENTRE].tags[tags[screens.SCREEN_CENTRE].TAG_DEV]
        }
    },
    {
        rule =
        {
            class = "[Tt]ortoise[Hh]g"
        },
        properties =
        {
            tag = tags[screens.SCREEN_CENTRE].tags[tags[screens.SCREEN_CENTRE].TAG_DEV]
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
            tag = tags[screens.SCREEN_CENTRE].tags[tags[screens.SCREEN_CENTRE].TAG_UNITY]
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
            tag = tags[screens.SCREEN_CENTRE].tags[tags[screens.SCREEN_CENTRE].TAG_UNITY]
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
            tag = tags[screens.SCREEN_CENTRE].tags[tags[screens.SCREEN_CENTRE].TAG_UNITY]
        }
    },
    {
        rule =
        {
            class = "[Ee]vince"
        },
        properties =
        {
            tag = tags[screens.SCREEN_CENTRE].tags[tags[screens.SCREEN_CENTRE].TAG_EXTRA]
        }
    },
    {
        rule =
        {
            class = "[Cc]hromium"
        },
        properties =
        {
            tag = tags[screens.SCREEN_RIGHT].tags[tags[screens.SCREEN_RIGHT].TAG_WEB_UNITY]
        }
    },
    {
        rule =
        {
            class = "[Ss]lack"
        },
        properties =
        {
            tag = tags[screens.SCREEN_RIGHT].tags[tags[screens.SCREEN_RIGHT].TAG_SLACK]
        }
    },
    {
        rule =
        {
            class = "[Ss]kype"
        },
        properties =
        {
            tag = tags[screens.SCREEN_RIGHT].tags[tags[screens.SCREEN_RIGHT].TAG_SKYPE]
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
            tag = tags[screens.SCREEN_RIGHT].tags[tags[screens.SCREEN_RIGHT].TAG_MUSIC]
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
            tag = tags[screens.SCREEN_RIGHT].tags[tags[screens.SCREEN_RIGHT].TAG_EXTRA]
        }
    }
}
-- }}}