# Editing
shreepway: key(cmd-shift-up)
shroomway: key(cmd-shift-down)
shreep: key(shift-up)
shroom: key(shift-down)
scram: edit.extend_word_left()
scrisch: edit.extend_word_right()
deselect: key(alt-right alt-shift-left),
lecksy: extend_line_start()
ricksy: extend_line_end()
tarsh: key(shift-tab)
(rick | rip): key(backspace)
(backspace | rep | rap): key(alt-backspace)
slurp: key(alt-delete)
slurpy: key(delete)
find: key(cmd-f)
bold: key(cmd-b),
italics: key(cmd-i),
underline: key(cmd-u),

scroll [down]: (down, actionsPerRepeatCycle=scrollingDistance),
scroll up: (up, actionsPerRepeatCycle=scrollingDistance),

# Mouse
skip: user.mouse_smooth_scroll(600)
skippy: user.mouse_smooth_scroll(300)
hip: user.mouse_smooth_scroll(-600)
hippy: user.mouse_smooth_scroll(-300)
# 'mouse (left | up | right | down)' + optional_numerals: move_mouse_relative,

# finder shortcuts
go computer: key(cmd-shift-c),
go desktop: key(cmd-shift-d),
go all files: key(cmd-shift-f),
go home: key(cmd-shift-h),
go icloud: key(cmd-shift-i),
go documents: key(cmd-shift-o),
go air drop: key(cmd-shift-r),
go utilities: key(cmd-shift-u),
go downloads: key(cmd-shift-l),
go applications: key(cmd-shift-a),
go developer: user.go_to_path_in_finder(~/Developer),
go talon: user.go_to_path_in_finder(~/.talon/user),
go pictures: user.go_to_path_in_finder(~/Pictures),

# various
(close | quit) application: key(cmd-q),
tab window: key(alt-tab),
windows: key(f6),
worm: 'python',
back tick: '`',
doc: 'docker',
slap: key(enter),
jimmy: 'git',
elipsis: '...'
lock (computer | screen): 
    speech.disable()
    key(ctrl-cmd-q)

# # Special keys - doesnt seem to work yet
# increase brightness: key(brightness_up, 2)
# decrease brightness: key(brightness_down, 2)
# (increase | volume) (volume | increase): key(volume_up, 2)
# (decrease | volume) (volume | decrease): key(volume_down, 2)
# mute sound: key(mute, 2)
# (play | pause) (sound | music): key(play, 2)