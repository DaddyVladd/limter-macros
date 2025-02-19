p::  ;key to activate script
    SendInput, {f1} ; menu
    Sleep, 600

    SendInput, {f5} ; turn 27k on
    Sleep, 50

    Sleep, 5

    SendInput, {Left} ; sending an input to swap loadouts
    Sleep, 1722

    startTime := A_TickCount
    Loop
    {
        if (A_TickCount - startTime > 5000)
            break
        Click, 145, 391, , , , Fast
        Click, 145, 381, , , , Fast
    }

    Loop, 6
    {
        Click, 145, 381, , , , Fast
        Sleep, 5
    }

    SendInput, {f5} ; turn 27k off
    Sleep, 50
    SendInput, {Esc} ; exit menu
    Sleep, 50
    SendInput, {Esc} ; exit menu
return
