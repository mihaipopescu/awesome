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
            tag = tags[screens.SCREEN_LEFT].settings[tags[screens.SCREEN_LEFT].TAG_TERMINAL].name
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
            tag = tags[screens.SCREEN_LEFT].settings[tags[screens.SCREEN_LEFT].TAG_SUBLIME].name
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
            tag = tags[screens.SCREEN_CENTRE].settings[tags[screens.SCREEN_CENTRE].TAG_VSCODE].name
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
            tag = tags[screens.SCREEN_CENTRE].settings[tags[screens.SCREEN_CENTRE].TAG_VSCODE].name
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
            tag = tags[screens.SCREEN_CENTRE].settings[tags[screens.SCREEN_CENTRE].TAG_DEV].name
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
            tag = tags[screens.SCREEN_CENTRE].settings[tags[screens.SCREEN_CENTRE].TAG_DEV].name
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
            tag = tags[screens.SCREEN_CENTRE].settings[tags[screens.SCREEN_CENTRE].TAG_DEV].name
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
            screen = screens.SCREEN_CENTRE,
            tag = tags[screens.SCREEN_CENTRE].settings[tags[screens.SCREEN_CENTRE].TAG_UNITY].name
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
            screen = screens.SCREEN_CENTRE,
            tag = tags[screens.SCREEN_CENTRE].settings[tags[screens.SCREEN_CENTRE].TAG_UNITY].name
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
            screen = screens.SCREEN_CENTRE,
            tag = tags[screens.SCREEN_CENTRE].settings[tags[screens.SCREEN_CENTRE].TAG_UNITY].name
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
            tag = tags[screens.SCREEN_CENTRE].settings[tags[screens.SCREEN_CENTRE].TAG_EXTRA].name
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
            tag = tags[screens.SCREEN_RIGHT].settings[tags[screens.SCREEN_RIGHT].TAG_WEB_UNITY].name
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
            tag = tags[screens.SCREEN_RIGHT].settings[tags[screens.SCREEN_RIGHT].TAG_SLACK].name
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
            tag = tags[screens.SCREEN_RIGHT].settings[tags[screens.SCREEN_RIGHT].TAG_SKYPE].name
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
            tag = tags[screens.SCREEN_RIGHT].settings[tags[screens.SCREEN_RIGHT].TAG_MUSIC].name
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
            tag = tags[screens.SCREEN_RIGHT].settings[tags[screens.SCREEN_RIGHT].TAG_EXTRA].name
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
            tag = tags[screens.SCREEN_RIGHT].settings[tags[screens.SCREEN_RIGHT].TAG_EXTRA].name
        }
    }
}
-- }}}
