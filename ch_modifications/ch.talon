# Editing
shreepway: key(cmd-shift-up)
shroomway: key(cmd-shift-down)
shreep: key(shift-up)
shroom: key(shift-down)
scram: edit.extend_word_left()
scrisch: edit.extend_word_right()
deselect: key(alt-right alt-shift-left)
lecksy: edit.extend_line_start()
ricksy: edit.extend_line_end()
tarsh: key(shift-tab)
(rick | rip): key(backspace)
(backspace | rep | rap): key(alt-backspace)
slurp: key(alt-delete)
slurpy: key(delete)
find: key(cmd-f)
bold: key(cmd-b)
italics: key(cmd-i)
underline: key(cmd-u)

# Mouse
skip: 
    user.mouse_smooth_scroll(600)
skippy: 
    user.mouse_smooth_scroll(300)
hip: 
    user.mouse_smooth_scroll(-600)
hippy: 
    user.mouse_smooth_scroll(-300)
skip right: 
    mouse_scroll(0, -40)
skip left:
    mouse_scroll(0, 40)
mouse up <number>: user.move_mouse_relative('up', number)
mouse right <number>: user.move_mouse_relative('right', number)
mouse down <number>: user.move_mouse_relative('down', number)
mouse left <number>: user.move_mouse_relative('left', number)
mouse pop: user.move_mouse_absolute(1860, 49)
mouse (install | update): user.move_mouse_absolute(1860, 92)
mouse outlook: user.move_mouse_absolute(1376, 881)

# finder shortcuts
go computer: key(cmd-shift-c)
go desktop: key(cmd-shift-d)
go all files: key(cmd-shift-f)
go home catalogue: key(cmd-shift-h)
go icloud: key(cmd-shift-i)
go documents: key(cmd-shift-o)
go air drop: key(cmd-shift-r)
go utilities: key(cmd-shift-u)
go downloads: key(cmd-shift-l)
go applications: key(cmd-shift-a)
go developer: user.file_manager_open_directory('~/Developer')
go talon: user.file_manager_open_directory('~/.talon/user')
go pictures: user.file_manager_open_directory('~/Pictures')

# various
(close | quit) application: key(cmd-q)
tab window: key(alt-tab)
windows: key(cmd-shift-ctrl-alt-t)
window <user.text>:
    key(shift-cmd-ctrl-alt-t)
    insert(user.formatted_text(user.text, "ALL_LOWERCASE"))
    key(enter)
    sleep(1s)
    user.mouse_move_center_active_window()
specific window {user.windowNames}: 
    key(shift-cmd-ctrl-alt-t)
    insert(user.windowNames)
    key(enter)
    sleep(1s)
    user.mouse_move_center_active_window()
worm: 'python'
back tick: '`'
doc: 'docker'
slap: key(enter)
slapy: key(cmd-right enter)
jimmy: 'git'
tag: '<'
close tag: '>'
lock (computer | screen): 
    speech.disable()
    key(ctrl-cmd-q)
(Active | toggle) joystick:
    user.switcher_focus('Joystick Mapper')
    user.mouse_move_center_active_window()
    sleep(50ms)
    user.move_mouse_relative('left', 4)
    sleep(50ms)
    user.move_mouse_relative('up', 0.5)
    mouse_click(0)
go (end | and): key(cmd-right)
go home: key(cmd-left)
point: '.'
crack: key(cmd-w)

# personal
paste e-mail: 'christian.h.hultin@gmail.com'
paste work e-mail: 'christian.hultin@netlight.com'
(voice | Swedish) disclaimer: '(writing in English since I\'m using voice recognition, you can write in Swedish if you want :slightly_smiling_face:)'

# Milky: 
style it:
    'css={css``'
    '}'
    key(left:2)
    key(enter:2)
    key(up)
    key(tab)
spacing: 
    '${spacing[]'
    '}px;'
    key(left:5)
coloring: 
    '${colors.'
    '}'
    key(left)