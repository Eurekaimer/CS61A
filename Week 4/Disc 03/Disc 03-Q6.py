from karel.stanfordkarel import *


def main():
    if front_is_clear():
        move()
        if front_is_clear():
            move()
            if front_is_clear():
                main()
    if front_is_blocked():
       turn_left()
       turn_left()
    move()