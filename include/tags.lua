-- {{{ Tags definitions
function set_tags(s, tags)
    if tags[s.index] ~= nil then
        for i, settings in ipairs(tags[s.index].settings) do
            awful.tag.add(
                settings.name, 
                {
                    layout = layouts.suits[settings.layout],
                    screen = s,
                    selected = (i == 1)
                }
            )
        end
    else
        awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s,layouts.suits[layouts.LAYOUT_FLOATING])
    end
end

return 
{
    [screens.SCREEN_CENTRE] = 
    {
        TAG_VSCODE =        1,
        TAG_DEV =           2,
        TAG_UNITY =         3,
        TAG_EXTRA =         4,

        settings = 
        {
            { name = "vscode",      layout = layouts.LAYOUT_MAX         },
            { name = "dev",         layout = layouts.LAYOUT_MAX         },
            { name = "unity",       layout = layouts.LAYOUT_FLOATING    },
            { name = "extra",       layout = layouts.LAYOUT_FLOATING    }
        }
    },

    [screens.SCREEN_RIGHT] = 
    {
        TAG_WEB_UNITY =     1,
        TAG_WEB_HOME =      2,
        TAG_SLACK =         3,
        TAG_SKYPE =         4,
        TAG_MUSIC =         5,
        TAG_EXTRA =         6,

        settings = 
        {
            { name = "web [unity]", layout = layouts.LAYOUT_MAX         },
            { name = "web [home]",  layout = layouts.LAYOUT_MAX         },
            { name = "slack",       layout = layouts.LAYOUT_TILE        },
            { name = "skype",       layout = layouts.LAYOUT_TILE        },
            { name = "music",       layout = layouts.LAYOUT_MAX         },
            { name = "extra",       layout = layouts.LAYOUT_FLOATING    }
        }
    },

    [screens.SCREEN_LEFT] = 
    {
        TAG_TERMINAL =      1,
        TAG_SUBLIME =       2,
        TAG_EXTRA =         3,

        settings = 
        {
            { name = "terminal",    layout = layouts.LAYOUT_CENTERWORK_HORIZONTAL   },
            { name = "sublime",     layout = layouts.LAYOUT_TILE_TOP                },
            { name = "extra",       layout = layouts.LAYOUT_FLOATING                }
        }
    }
}
-- }}}