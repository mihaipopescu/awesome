-- {{{ Tags definitions
local tags = {}

tags[screens.SCREEN_LEFT] =
{
    TAG_TERMINAL =      1,
    TAG_SUBLIME =       2,
    TAG_EXTRA =         3,

    tags = awful.tag(
        {
            "terminal",
            "sublime",
            "extra"
        },
        screens.SCREEN_LEFT,
        {
            layouts.suits[layouts.LAYOUT_TILE_TOP],
            layouts.suits[layouts.LAYOUT_TILE_TOP],
            layouts.suits[layouts.LAYOUT_TILE]
        }
    )
}

tags[screens.SCREEN_RIGHT] =
{
    TAG_WEB_UNITY =     1,
    TAG_WEB_HOME =      2,
    TAG_SLACK =         3,
    TAG_SKYPE =         4,
    TAG_MUSIC =         5,
    TAG_EXTRA =         6,

    tags = awful.tag(
        {
            "web [unity]",
            "web [home]",
            "slack",
            "skype",
            "music",
            "extra"
        }, 
        screens.SCREEN_RIGHT,
        {
            layouts.suits[layouts.LAYOUT_MAX],
            layouts.suits[layouts.LAYOUT_MAX],
            layouts.suits[layouts.LAYOUT_TILE],
            layouts.suits[layouts.LAYOUT_TILE],
            layouts.suits[layouts.LAYOUT_MAX],
            layouts.suits[layouts.LAYOUT_TILE]
        }
    )
}

tags[screens.SCREEN_CENTRE] =
{
    TAG_VSCODE =        1,
    TAG_DEV =           2,
    TAG_UNITY =         3,
    TAG_EXTRA =         4,

    tags = awful.tag(
        {
            "vscode",
            "dev",
            "unity",
            "extra"
        }, 
        screens.SCREEN_CENTRE,
        {
            layouts.suits[layouts.LAYOUT_MAX],
            layouts.suits[layouts.LAYOUT_MAX],
            layouts.suits[layouts.LAYOUT_FLOATING],
            layouts.suits[layouts.LAYOUT_TILE]
        }
    )
}

return tags
-- }}}
