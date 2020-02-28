#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; LAlt::Return 

LAlt::
    ; If (A_PriorHotKey = A_ThisHotKey and A_TimeSincePriorHotkey < 500)
    DoubleAlt := !DoubleAlt
    If (DoubleAlt)
    {
        SplashTextOn, 200, 0, "Double alt mode"
    }
    Else 
    {
        SplashTextOff
    }
Return

<!Enter::
    Send, {End}{Enter}
Return     
<!^Enter::  
<!+Enter::  
    Send, {Up}{End}{Enter}
Return
<!h::
    Send, {Home}{Home}+{End}
Return
<!+h::
    Send, {Home}{Home}+{End}{BackSpace}{BackSpace}
Return
<!^h::
    Send, {Home}+{End}^c{End}{Enter}^v
Return

<!d::
    Send, {Delete}
Return
<!s::
    Send, {BackSpace}
Return

<!z::
    Send, ^z
Return
<!x::
    Send, ^y
Return

<!9::
    Send, {Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}
Return
<!,::
    Send, {Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}
Return
<!^9::
<!^+9::
<!+9::
    Send, {PgUp}
Return
<!^,::
<!^+,::
<!+,::
    Send, {PgDn}
Return

<!/::
    Send, {Home}{Home}
Return

<!o::
    If (DoubleAlt)
        Send, {PgDn}
    Else
        Send, {End}
Return
<!u::
    If (DoubleAlt)
        Send, {PgUp}
    Else
        Send, {Home}
Return
<!+o::
    If (DoubleAlt)
        Send, +{PgDn}
    Else
        Send, +{End}
Return
<!+u::
    If (DoubleAlt)
        Send, +{PgUp}
    Else
        Send, +{Home}
Return
<!+^o::
    If (DoubleAlt)
        Send, +^{PgDn}
    Else
        Send, +^{End}
Return
<!+^u::
    If (DoubleAlt)
        Send, +^{PgUp}
    Else
        Send, +^{Home}
Return
<!^o::
    If (DoubleAlt)
        Send, ^{PgDn}
    Else
        Send, ^{End}
Return
<!^u::
    If (DoubleAlt)
        Send, ^{PgUp}
    Else
        Send, ^{Home}
Return

<!j::
    If (DoubleAlt)
        Send, !{Left}
    Else
        Send, {Left}
Return
<!i::
    If (DoubleAlt) 
        Send, !{Up}
    Else 
        Send, {Up}
Return
<!l::
    If (DoubleAlt)
        Send, !{Right}
    Else
        Send, {Right}
Return
<!k::
    If (DoubleAlt) 
        Send, !{Down}
    Else 
        Send, {Down}
Return

<!+j::
    If (DoubleAlt)
        Send, !+{Left}
    Else
        Send, +{Left}
Return
<!+i::
    If (DoubleAlt) 
        Send, !+{Up}
    Else 
        Send, +{Up}
Return
<!+l::
    If (DoubleAlt)
        Send, !+{Right}
    Else
        Send, +{Right}
Return
<!+k::
    If (DoubleAlt) 
        Send, !+{Down}
    Else 
        Send, +{Down}
Return

<!+^j::
    If (DoubleAlt)
        Send, !+^{Left}
    Else
        Send, +^{Left}
Return
<!+^i::
    If (DoubleAlt) 
        Send, !+^{Up}
    Else 
        Send, +^{Up}
Return
<!+^l::
    If (DoubleAlt)
        Send, !+^{Right}
    Else
        Send, +^{Right}
Return
<!+^k::
    If (DoubleAlt) 
        Send, !+^{Down}
    Else 
        Send, +^{Down}
Return

<!^j::
    If (DoubleAlt)
        Send, !^{Left}
    Else
        Send, ^{Left}
Return
<!^i::
    If (DoubleAlt) 
        Send, !^{Up}
    Else 
        Send, ^{Up}
Return
<!^l::
    If (DoubleAlt)
        Send, !^{Right}
    Else
        Send, ^{Right}
Return
<!^k::
    If (DoubleAlt) 
        Send, !^{Down}
    Else 
        Send, ^{Down}
Return