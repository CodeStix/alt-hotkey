#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; jump multiple words to left or right,
; remove everything before/after cursor
; remove word before/after cursor
; remove line

#T::
    Run, "wt.exe"
Return
#F::
    Send, #{Down}
Return
#Q::
    Send, !{F4}
Return

; Basic moves
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
<!o::
    Send, {End}
Return
<!u::
    Send, {Home}
Return

; Move word/select to the right
<!;::
Send, ^{Right}
Return
<!+;::
Send, +^{Right}
Return

; Move/select word to the left
<!h::
    Send, ^{Left}
Return
<!+h::
    Send, +^{Left}
Return

; Undo/redo/mouseback/mouseforward
<!z::
    Send, ^{z}
Return
<!+z::
    Send, ^{y}
Return
<!q::
    Send, {XButton1}
Return
<!e::
    Send, {XButton2}
Return

<!a::
    Send, {Escape}
Return
<!s::
    Send, {Delete}
Return
<!t::
    Send, {F12}
Return
<!+t::
    Send, +{F12}
Return
<!b::
    Send, ^s
Return
<!+b::
    Send, +^s
Return
<!d::
    Send, ^d
Return
<!+d::
    Send, +{Esc}
Return
<!f::
    Send, ^f
Return
<!+f::
    Send, ^+f
Return
<!/::
    Send, ^/
Return
<!.::
    Send, ^.
Return
<!w::
    Send, ^w
Return
<!p::
    Send, ^p
Return
<!+p::
    Send, +^p
Return
>!j::
    Send, ^j
Return

; Copy/cut/paste
<!x::
    Send, ^{x}
Return
<!c::
    Send, ^{c}
Return
<!v::
    Send, ^{v}
Return

; Delete entire line
<!'::
    WinGetActiveTitle, Active
    If (InStr(Active, "Visual Studio Code")) {
        Send, +^k
    }   
    Else {
        Send, ?{End}{ShiftDown}{Home}{Home}{ShiftUp}{Backspace}{Backspace}  
    }
Return
;  Duplicate entire line
<!+'::
    WinGetActiveTitle, Active
    If (InStr(Active, "Visual Studio Code")) {
        Send, ^c^v
    }   
    Else {
        Send, {End}{ShiftDown}{Home}{ShiftUp}^c{End}{Enter}^v
    }
Return

; F6::
;     WinGetActiveTitle, Active
;     If (InStr(Active, "Visual Studio Code")) {
;         MsgBox, Yes
;     }
;     Else {
;         MsgBox, No
;     }
; Return

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

;<!0::
;     Gosub, GotoInputUp
; Return
;<!.::
;     Gosub, GotoInputDown
; Return

LAlt::
Return

<!Space::
    Send, ^{Space}
Return

; <!^j::
;     Send, ^{Left}
; Return
; <!^l::
;     Send, ^{Right}
; Return
!>i::
    Send, !{Up} ; move line up
Return
!>k::
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

;<!+^j::   
;    Send, +^{Left}
; Return
;<!+^l::
;    Send, +^{Right}
; Return

; Create new cursors (vscode)
+!>i::
    Send, ^!{Up}
Return
+!>k::
    Send, ^!{Down}
Return

; <!^o::
; <!^+o::
; Return
<!+o::
    Send, +{End}
Return
; <!^u::
; <!^+u::
; learn
; Return
<!+u::
    Send, +{Home}
Return

; Big selects/jumps/moves using 9 and comma
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
;<!^9::
;<!^8::
!>9::
!>8::
    Send, {PgUp}
Return
;<!^,::
!>,::
    Send, {PgDn}
Return
;<!^+9::
;<!^+8::
+!>9::
+!>8::
    Send, +{PgUp}
Return
; <!^+,::
+!>,::
    Send, +{PgDn}
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
<!+Backspace::
    Send,+^{Right}{Backspace}
Return
