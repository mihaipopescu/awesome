-- {{{ Layouts definitions
local layouts =
{
    LAYOUT_FLOATING =               1,
    LAYOUT_TILE =                   2,
    LAYOUT_TILE_LEFT =              3,
    LAYOUT_TILE_BOTTOM =            4,
    LAYOUT_TILE_TOP =               5,
    LAYOUT_FAIR =                   6,
    LAYOUT_FAIR_HORIZONTAL =        7,
    LAYOUT_SPIRAL =                 8,
    LAYOUT_SPIRAL_DWINDLE =         9,
    LAYOUT_MAX =                    10,
    LAYOUT_MAX_FULLSCREEN =         11,
    LAYOUT_MAGNIFIER =              12,
    LAYOUT_CENTERWORK =             13,
    LAYOUT_CASCADE =                14,
    LAYOUT_CASCADE_TILE =           15,
    LAYOUT_CENTERWORK_HORIZONTAL =  16,
    LAYOUT_TERMFAIR_CENTER =        17,

    suits =
    {
        awful.layout.suit.floating,
        awful.layout.suit.tile,
        awful.layout.suit.tile.left,
        awful.layout.suit.tile.bottom,
        awful.layout.suit.tile.top,
        awful.layout.suit.fair,
        awful.layout.suit.fair.horizontal,
        awful.layout.suit.spiral,
        awful.layout.suit.spiral.dwindle,
        awful.layout.suit.max,
        awful.layout.suit.max.fullscreen,
        awful.layout.suit.magnifier,
        lain.layout.centerwork,
        lain.layout.cascade,
        lain.layout.cascade.tile,
        lain.layout.centerwork.horizontal,
        lain.layout.termfair.center
    }
}

-- Set layouts
awful.layout.layouts = layouts.suits

return layouts
-- }}}