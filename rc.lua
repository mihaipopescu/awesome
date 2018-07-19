-- {{{ Standard libraries
awful           = require("awful")
                  require("awful.autofocus")
hotkeys_popup   = require("awful.hotkeys_popup").widget
                  require("awful.hotkeys_popup.keys")
watch           = require("awful.widget.watch")
beautiful       = require("beautiful")
calendar        = require("calendar")
freedesktop     = require("freedesktop")
gears           = require("gears")
lain            = require("lain")
menubar         = require("menubar")
naughty         = require("naughty")
volume_control  = require("volume-control")
wibox           = require("wibox")

-- {{{ Themes
                  require("include/themes")
-- }}}

-- {{{ Layouts
layouts         = require("include/layouts")
-- }}}

-- {{{ Screens
screens         = require("include/screens")
-- }}}

-- {{{ Tags
tags            = require("include/tags")
-- }}}

-- {{{ Notifications
                  require("include/notifications")
-- }}}

-- {{{ Handlers
                  require("include/handler")
-- }}}

-- {{{ Variables
                  require("include/variables")
-- }}}

-- {{{ Menu
menu            = require("include/menu")
-- }}}

-- {{{ Music
                  require("include/music")
-- }}}

-- {{{ Widgets
                  require("include/widgets")
-- }}}

-- {{{ Bindings
                  require("include/bindings")
-- }}}

-- {{{ Rules
                  require("include/rules")
-- }}}

-- {{{ Signals
                  require("include/signals")
-- }}}

-- {{{ Autostart
                  -- require("include/autostart")
-- }}}