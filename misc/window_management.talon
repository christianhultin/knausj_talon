window (new|open): app.window_open()
window next: app.window_next()
window last: app.window_previous()
window close: app.window_close()
focus <user.running_applications>: 
    user.switcher_focus(running_applications)
    user.mouse_move_center_active_window()
running list: user.switcher_toggle_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)

snap <user.window_snap_position>: user.snap_window(window_snap_position)
snap next [screen]: user.move_window_next_screen()
snap last [screen]: user.move_window_previous_screen()
snap screen <number>: user.move_window_to_screen(number)
snap <user.running_applications> <user.window_snap_position>:
    user.snap_app(running_applications, window_snap_position)
snap <user.running_applications> [screen] <number>:
    user.move_app_to_screen(running_applications, number)

# CH Editions
shift screen:
    user.move_screen(1)
    sleep(500ms)
    user.move_window(0,0,1,1)
shift two screens:
    user.move_screen(-1)
    sleep(500ms)
    user.move_window(0,0,1,1)
maximize:
    user.move_window(0,0,1,1)
split window left: user.move_window(0,0,0.5,1)
split window right: user.move_window(0.5,0,0.5,1)
split window bottom: user.move_window(0,0.5,1,0.5)
split window top: user.move_window(0,0,1,0.5)
restore windows: key(ctrl-alt-cmd-shift-o)