#SingleInstance, Force
SetWorkingDir, %A_ScriptDir%
#MaxThreadsPerHotkey 999999999999
#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input

F2:: ; Key used to start script
{
    Send, {LButton Down}
    Loop, 8
    {
        Send, {k Down} 
        PreciseSleep(40)
        Send, {k Up} 
        PreciseSleep(40)
        Send, {2 Down}
        PreciseSleep(50)
        Send, {2 Up}
        PreciseSleep(170)
        Send, {k Down} 
        PreciseSleep(40)
        Send, {k Up} 
        PreciseSleep(40)
        Send, {1 Down}
        PreciseSleep(50)
        Send, {1 Up}
        PreciseSleep(170)
    }
    Send, {LButton Up}
    Return
}

PreciseSleep(s)
{
    DllCall("QueryPerformanceFrequency", "Int64*", QPF)
    DllCall("QueryPerformanceCounter", "Int64*", QPCB)
    While (((QPCA - QPCB) / QPF * 1000) < s)
        DllCall("QueryPerformanceCounter", "Int64*", QPCA)
    return ((QPCA - QPCB) / QPF * 1000) 
}

F4::reload ; Key used to start again