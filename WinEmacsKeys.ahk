;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with <open> and enter text in its buffer.

;; Use Emacs-like keys in Windows programs

#IfWinNotActive ahk_class vcxsrv/x X rl

CapsLock::Return

!f::
<^>!f::
Send, ^{Right}
Return

!b::
<^>!b::
Send, ^{Left}
Return

!+f::
<^>!+f::
Send, +^{Right}
Return

!+b::
<^>!+b::
Send, +^{Left}
Return


!v::
<^>!v::
Send, {PgUp}
Return


!k::
<^>!k::
Send, ^+{Right}
Send, {Delete}
Return

!Backspace::
<^>!Backspace::
Send, ^+{Left}
Send, {Delete}
Return

; Make sure Enter works normally
; (when it isn't used as a modifier):

*Enter::Send, {Enter}
*+Enter::Send, +{Enter}
*^Enter::Send, ^{Enter}
*!Enter::Send, !{Enter}

Enter & a::
CapsLock & a::
Send, {Home}
Return

Enter & e::
CapsLock & e::
Send, {End}
Return

Enter & f::
CapsLock & f::
Send, {Right}
Return

Enter & b::
CapsLock & b::
Send, {Left}
Return


Enter & v::
CapsLock & v::
Send, {PgDn}
Return

Enter & m::
CapsLock & m::
Send, {Enter}
Return


Enter & p::
CapsLock & p::
Send, {Up}
Return

Enter & n::
CapsLock & n::
Send, {Down}
Return


Enter & k::
CapsLock & k::
Send, +{End}
Send, {Delete}
Return

;; Personal keys (non-default)

!p::
<^>!p::
Send, {WheelUp}
Return

!n::
<^>!n::
Send, {WheelDown}
Return
