-- {{{ Tags definitions
function set_tags(s, tags)
    if screens.SCREEN_MAX == screen:count() then
        if tags[s.index] ~= nil then
            for i, settings in ipairs(tags[s.index]) do
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
            awful.tag({ "1", "2", "3" }, s,layouts.suits[layouts.LAYOUT_FLOATING])
        end
    else
        for i = 1, 9 do
            if tags[s.index] ~= nil then
                for i, settings in ipairs(tags[s.index]) do
                    awful.tag.add(
                        settings.name, 
                        {
                            layout = layouts.suits[settings.layout],
                            screen = s,
                            selected = (i == 1)
                        }
                    )
                end
            end
        end
    end
end

return 
{
    TAG_TERMINAL =      1,
    TAG_VSCODE =        2,
    TAG_SUBLIME =       3,
    TAG_DEV =           4,
    TAG_UNITY =         5,
    TAG_WEB_UNITY =     6,
    TAG_WEB_HOME =      7,
    TAG_SLACK =         8,
    TAG_SKYPE =         9,
    TAG_MUSIC =         10,
    TAG_EXTRA =         11,

    names =
    {
        "terminal",
        "vscode",
        "sublime",
        "dev",
        "unity",
        "web [unity]",
        "web [home]",
        "slack",
        "skype",
        "music",
        "extra"
    },

    [screens.SCREEN_CENTRE] = 
    {
        { name = "vscode",      layout = layouts.LAYOUT_MAX         },
        { name = "dev",         layout = layouts.LAYOUT_MAX         },
        { name = "extra",       layout = layouts.LAYOUT_FLOATING    }
    },

    [screens.SCREEN_RIGHT] = 
    {
        { name = "web [unity]", layout = layouts.LAYOUT_MAX         },
        { name = "web [home]",  layout = layouts.LAYOUT_MAX         },
        { name = "slack",       layout = layouts.LAYOUT_TILE        },
        { name = "skype",       layout = layouts.LAYOUT_TILE        },
        { name = "music",       layout = layouts.LAYOUT_MAX         },
        { name = "unity",       layout = layouts.LAYOUT_FLOATING    },
        { name = "extra",       layout = layouts.LAYOUT_FLOATING    }
    },

    [screens.SCREEN_LEFT] = 
    {
        { name = "terminal",    layout = layouts.LAYOUT_CENTERWORK_HORIZONTAL   },
        { name = "sublime",     layout = layouts.LAYOUT_TILE_TOP                },
        { name = "extra",       layout = layouts.LAYOUT_FLOATING                }
    }
}
-- }}}
