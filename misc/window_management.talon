window (new|open): app.window_open()
window next: app.window_next()
window last: app.window_previous()
window close: app.window_close()
focus <user.running_applications>: user.switcher_focus(running_applications)
running list: user.switcher_toggle_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)

# CH Editions
shift screen: user.move_screen(1)
shift two screens: user.move_screen(-1)
maximize: user.move_window(0,0,1,1)
split window left: user.move_window(0,0,0.5,1)
split windowe right: user.move_window(0.5,0,0.5,1)
restore windows: key(ctrl-alt-cmd-shift-o),