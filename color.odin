package color

import "core:fmt"

Color :: enum {
    reset = 0,
    black = 30,
    red,
    green,
    yellow,
    blue,
    magenta,
    cyan,
    white,
    bright_black = 90,
    bright_red,
    bright_green,
    bright_yellow,
    bright_blue,
    bright_magenta,
    bright_cyan,
    bright_white,
}

color :: proc(s: string, c: Color, foreground := true, reset := true) -> string {
    color := foreground ? c : c+10
    return fmt.aprintf("\033[%dm%s%s", color, s, reset ? "\033[1m" : "")
}