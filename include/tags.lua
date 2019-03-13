-- {{{ Tags definitions
function set_tags(s, tags)
    if screens.MAX_SCREEN == screen:count() then
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
    elseif 1 == screen:count() then
        is_selected = false
        for _, i in ipairs({screens.SCREEN_THREE , screens.SCREEN_ONE, screens.SCREEN_TWO}) do
            if tags[i] ~= nil then
                for j, settings in ipairs(tags[i]) do
                    awful.tag.add(
                        settings.name, 
                        {
                            layout = layouts.suits[settings.layout],
                            screen = s,
                            selected = (i == screens.SCREEN_THREE) and (j == 1)
                        }
                    )
                end
            end
        end
    else
        awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s,layouts.suits[layouts.LAYOUT_FLOATING])
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
    TAG_MUSIC =         9,
    TAG_EXTRA =         10,

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
        "music",
        "extra"
    },

    [screens.SCREEN_ONE] = 
    {
        { name = "vscode",      layout = layouts.LAYOUT_MAX         },
        { name = "dev",         layout = layouts.LAYOUT_MAX         },
        { name = "extra",       layout = layouts.LAYOUT_FLOATING    }
    },

    [screens.SCREEN_TWO] = 
    {
        { name = "web [unity]", layout = layouts.LAYOUT_MAX         },
        { name = "web [home]",  layout = layouts.LAYOUT_MAX         },
        { name = "slack",       layout = layouts.LAYOUT_TILE        },
        { name = "music",       layout = layouts.LAYOUT_MAX         },
        { name = "unity",       layout = layouts.LAYOUT_FLOATING    },
        { name = "extra",       layout = layouts.LAYOUT_FLOATING    }
    },

    [screens.SCREEN_THREE] = 
    {
        { name = "terminal",    layout = layouts.LAYOUT_CENTERWORK_HORIZONTAL   },
        { name = "sublime",     layout = layouts.LAYOUT_TILE_TOP                },
        { name = "extra",       layout = layouts.LAYOUT_FLOATING                }
    }
}
-- }}}
