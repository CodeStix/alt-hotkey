#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

<!j::
    Send, {Left}
Return
<!l::
    Send, {Right}
Return
<!i::
    Send, {Up}
Return
<!k::
    Send, {Down}
Return

LAlt::
<!Space::
Return

<!^j::
    Send, ^{Left}
Return
<!^l::
    Send, ^{Right}
Return
<!^i::
    Send, !{Up} ; move line up
Return
<!^k::
    Send, !{Down} ; move line down
Return

<!+j::
    Send, +{Left}
Return
<!+l::
    Send, +{Right}
Return
<!+i::
    Send, +{Up}
Return
<!+k::
    Send, +{Down}
Return

<!+^j::   
    Send, +^{Left}
Return
<!+^l::
    Send, +^{Right}
Return
<!+^i::
    Send, +^{Up}
Return
<!+^k::
    Send, +^{Down}
Return

<!o::
    Send, {End}
Return
<!u::
    Send, {Home}
Return

<!^o::
<!^+o::
<!+o::
    Send, +{End}
Return
<!^u::
<!^+u::
<!+u::
    Send, +{Home}
Return

<!h::
    Send, {End}{ShiftDown}{Home}{Home}{ShiftUp}
Return
<!^+h::
    Send, {End}{ShiftDown}{Home}{Home}{ShiftUp}^c
<!+h::
    Send, ?{End}{ShiftDown}{Home}{Home}{ShiftUp}{Backspace}{Backspace}
Return
<!^h::
    Send, {End}{ShiftDown}{Home}{Home}{ShiftUp}^c{End}{Enter}^v
Return

<!9::
<!8::
    Send, {Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}
Return
<!,::
<!.::
    Send, {Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}
Return
<!+9::
<!+8::
    Send, {ShiftDown}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{ShiftUp}
Return
<!+,::
<!+.::
    Send, {ShiftDown}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{ShiftUp}
Return

<!^9::
<!^8::
    Send, {PgUp}
Return
<!^,::
<!^.::
    Send, {PgDn}
Return
<!^+9::
<!^+8::
    Send, +{PgUp}
Return
<!^+,::
<!^+.::
    Send, +{PgDn}
Return

<!+Enter::  
    Send, +{End}^x{Down}{End}^v
Return
<!^+Enter::  
    Send, +{End}^x{Up}{End}^v
Return
<!Enter::
    Send, {End}{Enter}
Return 
<!^Enter::  
    Send, {Home}{Enter}{Up}
Return

<!Backspace::
    Send,^{Left}^{Right}{ShiftDown}^{Left}{ShiftUp}{Backspace}
Return

<!s::
    Send, {Delete}
Return
