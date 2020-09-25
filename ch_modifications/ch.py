import time
from talon import Module, ctrl

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
