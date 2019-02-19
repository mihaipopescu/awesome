-- {{{ Auto start applications
awful.spawn("xrandr --output HDMI-0 --pos 0x620 --output DP-2 --pos 2560x620 --primary --output DP-0.8 --rotate right --pos 5120x0")

function startup_programs()
	awful.spawn("code")
	awful.spawn("subl")
	awful.spawn("chromium-browser")
	awful.spawn("slack")
	awful.spawn("skypeforlinux")
	awful.spawn("xscreensaver -no-splash")
	awful.spawn("xterm")
	awful.spawn("xterm")
	awful.spawn("xterm")
end
-- }}}