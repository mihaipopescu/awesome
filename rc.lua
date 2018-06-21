-- {{{ Standard libraries
awful           = require("awful")
                  require("awful.autofocus")
hotkeys_popup   = require("awful.hotkeys_popup").widget
                  require("awful.hotkeys_popup.keys")
beautiful       = require("beautiful")
freedesktop     = require("freedesktop")
gears           = require("gears")
lain            = require("lain")
menubar         = require("menubar")
naughty         = require("naughty")
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

-- {{{ Notifications
                  require("include/notifications")
-- }}}

-- {{{ Handlers
                  require("include/handler")
-- }}}

-- {{{ Variables
                  require("include/variables")
-- }}}

-- {{{ Tags
tags            = require("include/tags")
-- }}}

-- {{{ Menu
menu            = require("include/menu")
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
                  require("include/autostart")
-- }}}