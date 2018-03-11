; This should be replaced by whatever your native language is. See

; http://msdn.microsoft.com/en-us/library/dd318693%28v=vs.85%29.aspx
; for the language identifiers list.

en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)

ru := DllCall("LoadKeyboardLayout", "Str", "00000419", "Int", 1)

sv := DllCall("LoadKeyboardLayout", "Str", "0000041D", "Int", 1)



LAlt & Space::PostMessage 0x50, 0, %en%,, A


LControl & RControl::PostMessage 0x50, 0, %sv%,, A

RControl & LControl::PostMessage 0x50, 0, %sv%,, A



LShift & RShift::PostMessage 0x50, 0, %ru%,, A

RShift & LShift::PostMessage 0x50, 0, %ru%,, A



; !Shift::

; w := DllCall("GetForegroundWindow")

; pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)

; l := DllCall("GetKeyboardLayout", "UInt", pid)

; if (l = en)

; {

;     PostMessage 0x50, 0, %ru%,, A
; }

; else

; {
;     PostMessage 0x50, 0, %en%,, A

; }

; return
