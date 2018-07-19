-- {{{ Music definitions
-- Spotify
function spotify_next()
    awful.util.spawn("sp next")
end

function spotify_pause()
    awful.util.spawn("sp pause")
end

function spotify_play()
    awful.util.spawn("sp play")
end

function spotify_play_pause()
    awful.util.spawn("sp play-pause")
end

function spotify_previous()
    awful.util.spawn("sp previous")
end

function spotify_stop()
    awful.util.spawn("sp stop")
end
-- }}}