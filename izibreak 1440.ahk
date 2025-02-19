P::  ;key to activate script
    SendInput, {f1}
    Sleep, 600

    SendInput, {f5} ; turn 27k on
    Sleep, 50

    Sleep, 5

    SendInput, {Left} ; sending an input to swap loadouts
    Sleep, 1000

    startTime := A_TickCount
    Loop
    {
        if (A_TickCount - startTime > 5000)
            break
        Click, 192, 446, , , , Fast
        Click, 192, 575, , , , Fast
    }

    Loop, 6
    {
        Click, 192, 446, , , , Fast
        Sleep, 5
    }

    SendInput, {f5} ; turn 27k off
    Sleep, 50
    SendInput, {Esc} ; exit menu
    Sleep, 50
    SendInput, {Esc} ; exit menu
return
