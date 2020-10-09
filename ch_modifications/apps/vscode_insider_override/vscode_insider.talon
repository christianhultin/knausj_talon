app: vscodeInsider
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.snippets
tag(): user.splits
tag(): user.tabs

# Navigating text
line <number>:
        key(cmd-g)
        '{number}'
        key(enter)

# Selecting text
select line <number> until <number>:
    key(cmd-g)
    '{number_1}'
    key(enter)
    key(down: number_2 - number_1)
select: key(cmd-d)
select instances: key(cmd-shift-l)
refactor: key(f2)
cursor up: key(alt-cmd-up)
cursor down: key(alt-cmd-down)

# Finding text
find: key(cmd-f)
find all: key(cmd-shift-f)
# A lot already in find_and_replace.talon

# Clipboard
clone: key(alt-shift-down)
cut line: key(end cmd-shift-left cmd-x backspace)
copy line: key(end cmd-shift-left cmd-c)

# Navigation
Go to line: key(cmd-g)
go bracket: key(cmd-alt-shift-b: 2)
explorer: key(cmd-shift-e)
extensions: key(cmd-shift-x)
open file: key(cmd-down)
delete file: key(cmd-backspace)
toggle pane: key(cmd-b)
steffy: key(cmd-alt-left)
steppy: key(cmd-alt-right)
crack other: key(alt-cmd-t)

# TODO:
    # navigate left: navigate_left
    # navigate right: navigate_right
navigate up: key(ctrl-cmd-shift-k)
navigate down: key(ctrl-cmd-shift-j)

# tabbing
# defined in tabs.talon

# spacing
# defined in generic_editor.talon

# editing
bracken: key(cmd-shift-ctrl-right)
indent: key(alt-shift-f)
line up: key(alt-up)
line down: key(alt-down)
# other defined in generic_editor.talon

# various
cast: key(cmd-shift-7)
block comment: key(alt-shift-a)
(arrange | fix) imports: key(alt-shift-o)
master: key(cmd-p)
search all: key(cmd-shift-f)
(version | source) control: key(ctrl-shift-g)
(drop-down | drop): key(ctrl-space)
quickfix: key(cmd-.)
(go | find) definition: key(cmd-i)
select bracket: key(cmd-alt-shift-ctrl-b)
keyboard shortcuts: key(cmd-k cmd-s)
(edit file | pin tab): key(a cmd-z)
split editor: key(ctrl-cmd-alt-shift-7)
(merge | join) editors: user.vscode('Join All Editor Group')
reload window: user.vscode('Reload window')
execute: key(cmd-enter)

# folding
fold all: key(cmd-k cmd-0)
unfold all: key(cmd-k cmd-j)