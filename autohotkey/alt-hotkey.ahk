#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#T::
    Run, "wt.exe"
Return
#F::
    Send, #{Down}
Return
#Q::
    Send, !{F4}
Return

GotoInputDown:
    Input, OutputVar, L2, {Enter}{Space}{Esc}
    OutputVar := StrReplace(OutputVar, "j", "1")    
    OutputVar := StrReplace(OutputVar, "k", "2")    
    OutputVar := StrReplace(OutputVar, "l", "3")   
    OutputVar := StrReplace(OutputVar, "u", "4")    
    OutputVar := StrReplace(OutputVar, "i", "5")    
    OutputVar := StrReplace(OutputVar, "o", "6")    
    OutputVar := StrReplace(OutputVar, "&", "7")    
    OutputVar := StrReplace(OutputVar, "*", "8")    
    OutputVar := StrReplace(OutputVar, "(", "9")    
    OutputVar := StrReplace(OutputVar, ")", "0")    
    
    OutputValue := Abs(OutputVar)
    Loop %OutputValue% {
        Send, {Down}
    }
Return

GotoInputUp:
    Input, OutputVar, L2, {Enter}{Space}{Esc}
    OutputVar := StrReplace(OutputVar, "j", "1")    
    OutputVar := StrReplace(OutputVar, "k", "2")    
    OutputVar := StrReplace(OutputVar, "l", "3")    
    OutputVar := StrReplace(OutputVar, "u", "4")    
    OutputVar := StrReplace(OutputVar, "i", "5")    
    OutputVar := StrReplace(OutputVar, "o", "6")    
    OutputVar := StrReplace(OutputVar, "&", "7")    
    OutputVar := StrReplace(OutputVar, "*", "8")    
    OutputVar := StrReplace(OutputVar, "(", "9")    
    OutputVar := StrReplace(OutputVar, ")", "0")    
    
    OutputValue := Abs(OutputVar)
    Loop %OutputValue% {
        Send, {Up}
    }
Return

<!0::
    Gosub, GotoInputUp
Return
<!.::
    Gosub, GotoInputDown
Return

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
    Send, {ShiftDown}{End}{ShiftUp}{Backspace}
Return
<!^+h::
    Send, {End}{ShiftDown}{Home}{Home}{ShiftUp}^c
<!+h::
    Send, ?{End}{ShiftDown}{Home}{Home}{ShiftUp}{Backspace}{Backspace}  
Return
<!^h::
    Send, {End}{ShiftDown}{Home}{ShiftUp}^c{End}{Enter}^v
Return

<!9::
<!8::
    Send, {Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}
Return
<!,::
    Send, {Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}
Return
<!+9::
<!+8::
    Send, {ShiftDown}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}{ShiftUp}
Return
<!+,::
    Send, {ShiftDown}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{ShiftUp}
Return

<!^9::
<!^8::
    Send, {PgUp}
Return
<!^,::
    Send, {PgDn}
Return
<!^+9::
<!^+8::
    Send, +{PgUp}
Return
<!^+,::
    Send, +{PgDn}
Return

MoveLeftClipboard() {
    ClipWait
    i := StrLen(Clipboard)
    While i > 0 {
        Send, {Left}
        i -= 1
    }
}

<!+Enter::  
    Clipboard := ""
    Send, +{End}^c{Backspace}{Down}{End}^v
    MoveLeftClipboard()
Return
<!^+Enter::  
    Clipboard := ""
    Send, +{End}^c{Backspace}{Up}{End}^v
    MoveLeftClipboard()
Return
<!Enter::
    Send, {End}{Enter}
Return 
<!^Enter::  
    Send, {Home}{Enter}{Up}
Return

<!Backspace::
    Send,^{Backspace}
Return

<!s::
    Send, {Delete}
Return
