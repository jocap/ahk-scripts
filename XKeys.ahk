;; Match all VcXsrv windows (X server)
#IfWinActive ahk_class vcxsrv/x X rl

*~CapsLock Up::SetCapsLockState, Off

*LWin::Send, {F15 Down}
*LWin Up::Send, {F15 Up}

; My Linux VM interprets F15 as Pause, which I remap
; using xmodmap to Super_L.