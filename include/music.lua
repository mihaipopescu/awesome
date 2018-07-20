-- {{{ Music definitions

-- Spotify
spotify_song = "Spotify"
spotify_song_color = beautiful.fg_focus
spotify_song_index = 0
spotify_song_size = 0
spotify_song_state = 0
spotify_song_text = "Spotify"

function set_play_pause_icon(widget, state)
    if (state:gsub("\n", "") == "Playing") then
        spotify_song_state = 1
        widget.image = beautiful.mpd_pause
    else
        spotify_song_state = 0
        widget.image = beautiful.mpd_play
    end
end

function set_spotify_text(widget, song)
    if string.find(song, "Error: Spotify is not running.") ~= nil then
        spotify_song = "Spotify"
        spotify_song_text = "  Spotify  "
        spotify_song_color = beautiful.fg_urgent
        spotify_song_index = 1
        spotify_song_size = spotify_song_text:len()

        widget:set_markup(
            "<span foreground=" .. "'"..spotify_song_color .. "'" .. ">" .. 
            spotify_song_text .. 
            "</span>"
        )
    else
        if (spotify_song ~= song) then
            spotify_song = song
            spotify_song_text = "   " .. spotify_song:sub(1, spotify_song:len() - 1) .. "   "
            spotify_song_index = 1
            spotify_song_size = spotify_song_text:len()
        end

        if (spotify_song_state == 1) then
            spotify_song_color = beautiful.fg_focus
        else
            spotify_song_color = beautiful.fg_normal
        end

        widget:set_markup(
            "<span foreground=" .. "'"..spotify_song_color .. "'" .. ">" .. 
            spotify_song_text:sub(spotify_song_index, spotify_song_size) .. 
            spotify_song_text:sub(1, spotify_song_index - 1) .. 
            "</span>"
        )
    end
end

function update_spotify_text(widget, song)
    if (spotify_song_state == 1) then
        spotify_song_index = spotify_song_index + 1
    else
        spotify_song_index = 1
    end

    if (spotify_song_index <= 0) then
        spotify_song_index = spotify_song_size - 1
    end

    if (spotify_song_index >= spotify_song_size) then
        spotify_song_index = 1
    end
    
    set_spotify_text(widget, song)
end

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