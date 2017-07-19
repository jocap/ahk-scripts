; Use Emacs-like keys in Windows programs

#IfWinNotActive ahk_class vcxsrv/x X rl

*~CapsLock Up::SetCapsLockState, Off

!f::Send, ^{Right}
!b::Send, ^{Left}
!+f::Send, +^{Right}
!+b::Send, +^{Left}

!v::Send, {PgUp}
!k::Send, ^{Delete}

<^>!f::Send, ^{Right}
<^>!b::Send, ^{Left}
<^>!+f::Send, +^{Right}
<^>!+b::Send, +^{Left}

<^>!v::Send, {PgUp}
<^>!k::Send, ^{Delete}

!Backspace::Send, ^{Backspace}

*Enter::Send, {Enter}
Enter & a::Send, {Home}
Enter & e::Send, {End}
Enter & f::Send, {Right}
Enter & b::Send, {Left}
Enter & v::Send, {PgDn}

CapsLock & a::Send, {Home}
CapsLock & e::Send, {End}
CapsLock & f::Send, {Right}
CapsLock & b::Send, {Left}
CapsLock & p::Send, {Up}
CapsLock & n::Send, {Down}
CapsLock & v::Send, {PgDn}

CapsLock & k::
	Send, +{End}
	Send, {Delete}
	Return
