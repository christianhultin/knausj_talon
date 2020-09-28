import time
from talon import Module, ctrl, actions, ui

mod = Module()


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
        pixels_to_travel = 50 * distance
        direction_vector = {
            'up': (0, -1),
            'right': (1, 0),
            'down': (0, 1),
            'left': (-1, 0)
        }[direction_type]
        (x, y) = ctrl.mouse_pos()
        ctrl.mouse_move(x + direction_vector[0] * pixels_to_travel,
                        y + direction_vector[1] * pixels_to_travel)


    def move_mouse_absolute(xPos: int, yPos: int):
        def move_mouse_to_position(m):
            ctrl.mouse_move(xPos, yPos)
        return move_mouse_to_position

    def go_to_path_in_finder(path: str):
        """Goes to a path in finder"""
        actions.key('cmd-shift-g')
        actions.insert(path)
        actions.key('return')
    
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