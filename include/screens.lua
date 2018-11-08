-- {{{ Screens definitions
return
{
    SCREEN_ONE =    1 <= screen.count() and 1 or awful.screen.preferred,
    SCREEN_TWO =    2 <= screen.count() and 2 or awful.screen.preferred,
    SCREEN_THREE =  3 <= screen.count() and 3 or awful.screen.preferred
}
-- }}}