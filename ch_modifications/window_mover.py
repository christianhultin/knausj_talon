from talon import Context, actions, ui, Module, app, clip, tap
from typing import List, Union

# Note that this is not connected to voice recognition, but merely
# for keyboard shortcuts to work with window management. You have to
# tie the shortcuts to voice recognition in a separate place

mod = Module()


@mod.action_class
class Actions:
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
