#### COLOUR
tm_icon="💥"
tm_color_active=colour82
tm_color_inactive=colour241
tm_color_feature=colour46
tm_color_music=colour10
tm_active_border_color=colour46
tm_date_color=colour9

# separators
tm_separator_left_bold="◀"
tm_separator_left_thin="❮"
tm_separator_right_bold="▶"
tm_separator_right_thin="❯"

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5

# default statusbar colors
# set-option -g status-bg default
set-option -g status-fg $tm_color_active
set-option -g status-bg colour0

# default window title colors
set-window-option -g window-status-style fg=$tm_color_inactive
set-window-option -g window-status-style bg=default
set -g window-status-format "#I #W"

# active window title colors
set-window-option -g window-status-current-style fg=$tm_color_active
set-window-option -g window-status-current-style bg=default
set-window-option -g window-status-current-format "#[bold]#I #W"

# pane border
set-option -g pane-border-style fg=$tm_color_inactive
set-option -g pane-active-border-style fg=$tm_active_border_color

# message text
set-option -g message-style bg=default
set-option -g message-style fg=$tm_color_active

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

# clock
set-window-option -g clock-mode-colour $tm_color_active

# tm_spotify="#[fg=$tm_color_music]#(osascript ~/.dotfiles/applescripts/spotify.scpt)"
# tm_itunes="#[fg=$tm_color_music]#(osascript ~/.dotfiles/applescripts/itunes.scpt)"
# tm_rdio="#[fg=$tm_color_music]#(osascript ~/.dotfiles/applescripts/rdio.scpt)"
tm_battery="#(~/.dotfiles/bin/battery_indicator.sh)"

tm_date="#[fg=$tm_date_color] %R %Y-%m-%d"
tm_host="#[fg=$tm_color_feature,bold]#h"
tm_session_name="#[fg=$tm_color_feature,bold]$tm_icon #S"

set -g status-left $tm_session_name' '
set -g status-right $tm_itunes' '$tm_date' '$tm_host
