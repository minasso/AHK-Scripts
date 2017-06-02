#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   Global Hotkeys   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;; always on top  ;;;;;;;;;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+a::  Winset, Alwaysontop, , A

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;  mouse keys ;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

XButton1::Shift
XButton2::Ctrl

MButton::^!i
; +MButton::
; ; ^MButton::  

; +WheelDown::
; ^WheelDown::

; ^WheelUp::
; +WheelUp::
;         Send, {CtrlDown} {AltDown} Tab
;         Sleep, 2000
;         Send, {CtrlUp} {AltUp}


#InstallKeybdHook





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;  google selection ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^g:: 
    send ^c
    sleep 500
    run  https://www.google.com/#q=%clipboard%
return           

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;; fix nav keys ;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^Left::
!Left::
        Send {Home}

;^Right::Send {End}

^!Left::Send {Home}

^Up::Send {PgUp}

^Down::Send {PgDn}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  minimize window  ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^Space::
!Space::
; ^WheelDown::
+WheelDown::
MouseGetPos,,,win
WinGetClass, class, ahk_id  
If class in Progman, WorkerW
 WinActivate, ahk_class Chrome_WidgetWin_1
else
 WinMinimize, A
Return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;  reverse scrolling  ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*
WheelUp::
Send {WheelDown}
Return

WheelDown::
Send {WheelUp}
Return
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;  remap keys  ;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

AppsKey::RAlt 

RAlt::Ctrl

#IfWinNotActive ahk_exe mintty.exe
Insert::
#IfWinNotActive
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;   spotify  ;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^!#+s:: Run C:\Users\andrew\AppData\Roaming\Spotify\Spotify.exe

;;works together with pederson spot 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;; global pen usage ;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#F20::
        run onenote.exe
        return

        
#F19::
        run onenote.exe
        return
        
;#F18::
        run onenote.exe
        return


