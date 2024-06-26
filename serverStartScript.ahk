#include mouse.ahk

~F3 & 2::
SetTitleMatchMode, 1
; InputBox, winTitle, Switch windows, Enter a window title.,, 300, 125
; WinActivate, i)\Q%winTitle%\E
WinActivate, Command Prompt
Sleep 200
Send {LCtrl Down}{LShift Down}{2}~{LCtrl Up}{LShift Up}
Sleep 200
Return

~F5 & E::
Sleep 300
Send {Esc}
Sleep 300
Send E: && cd\
return

~F5 & C::
Sleep 300
Send {Esc}
Sleep 300
Send C: && cd\
return

~F5 & B::
Sleep 300
Send {Esc}
Sleep 300
Send npm run build
return

~F5 & M::
Sleep 300
Send {Esc}
Sleep 300
Send start .
return

~F5 & A::
Sleep 300
Send {Esc}
Sleep 300
Send cd build && start .
return

~F5 & H::
Sleep 300
Send {Esc}
Sleep 300
Send rmdir build /s
return

; Open Obsidian
^!#O::
SetTitleMatchMode, 2
IfWinExist, ahk_exe Obsidian.exe
{
    WinActivate
    return
}
Else
{
return
}

; Reload Script
~Esc & `::reload

; Open VS Code
#+V::
SetTitleMatchMode, 2
IfWinExist, ahk_exe code.exe
{
    WinActivate
    return
}
Else
{
return
}

; Open Download Folder
#+D::
SetTitleMatchMode, 2
IfWinExist, Downloads
{
    WinActivate
    return
}
Else
{
return
}

<!CapsLock::
Send {Esc}
return

^!H::
Send {Left}
return

^!J::
Send {Down} 
return

^!K::
Send {Up} 
return

^!L::
Send {Right} 
return

^+#L::
Send ^{Right} 
return

^+#H::
Send ^{Left} 
return

^!+L::
Send ^+{Right} 
return

^!+H::
Send ^+{Left} 
return

^!+J::
Send +{Down} 
return

#+J::
Send !+{Down} 
return

^!+K::
Send +{Up} 
return

^!I::
Send ^{PgUp} 
return

^!,::
Send ^{PgDn} 
return

!I::
Send {PgUp}
return

!,::
Send {PgDn}
return

!;::
Send !{Tab}
return

^#B::
Send {BackSpace}
return

#!B::
Send ^{BackSpace}
return

!D::
Send {Delete}
return

!+D::
Send ^{Delete}
return

!+^D::
Send +{Delete}
return

!+Delete::
Send {Home}{ShiftDown}{End}{ShiftUp}{Del}
return

^+!E::
Send ^{End}
return

^+#E::
Send {End}
return

^+!3::
Send ^{Home}
return

^+#3::
Send {Home}
return