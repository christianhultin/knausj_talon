import time
from talon import Module, ctrl, actions, ui, Context

mod = Module()
ctx = Context()

mod.list('website', desc='Opening website')
ctx.lists['self.website'] = {
    'facebook': 'https://facebook.com',
    'twitter': 'https://twitter.com',
    'trello': 'https://trello.com',
    'gmail': 'https://gmail.com',
    'get hub': 'https://github.com',
    'reddit': 'https://reddit.com',
    'talon docs': 'https://github.com/dwighthouse/unofficial-talonvoice-docs',
    'official docs': 'https://talonvoice.com/docs/index.html',
    'hobo': 'https://se.hbonordic.com/',
    'messenger': 'https://www.messenger.com/',
    'youtube': 'https://www.youtube.com/',
    'community': 'https://github.com/dwiel/talon_community',
    'localhost': 'http://localhost:3000',
    'rebel': 'https://rebel.netlight.com/',
    'stack overflow': 'https://stackoverflow.com/',
    # git lab
    'board': 'https://git.sto.netlight.se/feedback-tool/feedback-client/boards',
    'laugh board': 'https://git.sto.netlight.se/groups/laf-tool/-/boards',
    'merge': 'https://git.sto.netlight.se/feedback-tool/feedback-client/merge_requests',
    'laugh merge': 'https://git.sto.netlight.se/laf-tool/laf-client/merge_requests',
    'back end merge': 'https://git.sto.netlight.se/feedback-tool/feedback-api/merge_requests',
    'back end board': 'https://git.sto.netlight.se/feedback-tool/feedback-api/boards',
}

mod.list('windowNames', desc='Opening windows')
ctx.lists['self.windowNames'] = {
    'talon': 'talon',
}


@mod.action_class
class Actions:
    def mouse_smooth_scroll(amount: int):
        """Performs a smooth scrolling motion"""
        total_time = 0.11
        interval = 0.007
        depth = int(total_time // interval)
        split = amount / depth
        for x in range(depth):
            ctrl.mouse_scroll(y=split)
            time.sleep(interval)

    def move_mouse_relative(direction: str, distance: int):
        """Moves mouse relative to current position"""
        pixels_to_travel = 50 * distance
        direction_vector = {
            'up': (0, -1),
            'right': (1, 0),
            'down': (0, 1),
            'left': (-1, 0)
        }[direction]
        (x, y) = ctrl.mouse_pos()
        ctrl.mouse_move(x + direction_vector[0] * pixels_to_travel,
                        y + direction_vector[1] * pixels_to_travel)

    def move_mouse_absolute(xPos: int, yPos: int):
        """Moves mouse to absolute positio"""
        ctrl.mouse_move(xPos, yPos)

    def move_screen(direction: int):
        """Moves a window between screens"""
        win = ui.active_window()
        src_screen = win.screen
        screens = ui.screens()
        dst_screen = screens[(screens.index(
            src_screen) + direction) % len(screens)]
        if src_screen == dst_screen:
            return

        src = src_screen.rect
        dst = dst_screen.rect
        old = win.rect
        win.rect = ui.Rect(
            dst.left + (old.left - src.left) / src.width * dst.width,
            dst.top + (old.top - src.top) / src.height * dst.height,
            old.width / src.width * dst.width,
            old.height / src.height * dst.height,
        )

    def move_window(x: float, y: float, w: float, h: float):
        """Moves a window in different positions on the screen"""
        win = ui.active_window()
        rect = win.screen.rect.copy()
        rect.x += rect.width * x
        rect.y += rect.height * y
        rect.width *= w
        rect.height *= h
        win.rect = rect

    def go_to_website(website: str):
        """Goes to a specific website"""
        actions.browser.focus_address()
        actions.insert(website)
        actions.key("enter")

    def command_with_delay(keyDescription: str, delay: float):
        """Performs a series of commands with delay inbetween"""
        keysToBePressed = keyDescription.split()
        for key in keysToBePressed:
            actions.key(key)
            time.sleep(delay)

    def jump_tab(number: float):
        """Jumps to a specific tab"""
        command = "cmd-" + str(number)
        actions.key(command)

    def file_manager_open_directory(path: str):
        """opens the directory that's already visible in the view"""
        actions.key("cmd-shift-g")
        actions.sleep("50ms")
        actions.insert(path)
        actions.key("enter")
