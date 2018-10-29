-- {{{ Screens definitions
return
{
    SCREEN_CENTRE =   1 <= screen:count() and 1 or screen.primary.index,
    SCREEN_RIGHT =    2 <= screen:count() and 2 or screen.primary.index,
    SCREEN_LEFT =     3 <= screen:count() and 3 or screen.primary.index,
    SCREEN_MAX = 3
}
-- }}}