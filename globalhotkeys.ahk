#Include boil.ahk

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;  mouse keys ;;;;;;;;;;;;;;;;;;  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
XButton1::Shift
XButton2::Ctrl

^MButton::Volume_Mute
^WheelDown::Volume_Down
^WheelUp::Volume_Up

;+WheelUp::Send ^!f  ;(myspeed=faster)
;+WheelDown::Send ^!s   ;(myspeed=slower)
;+WheelUp::a  ;(myspeed=faster)
;+WheelDown::Send +<   ;(myspeed=slower)

+WheelUp::d  ;(faster)
+WheelDown::Send s   ;(slower)

;^+WheelUp::
;^+WheelDown::
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  minimize/close window  ;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;minimize;;;;;;;;;;;;;;;
^Space::
+MButton::
MouseGetPos,,,win
WinGetClass, class, ahk_id  
WinMinimize, A
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;  kill chrome ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+k::
    run C:\Users\Andrew\Desktop\killchrome.bat
    sleep 500
    run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
    sleep 1000
    WinMaximize, A
    sleep 1000
    send {Tab}{Esc}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;  google selection ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^g:: 
    send ^c
    sleep 500
    run  https://www.google.com/#q=%clipboard%
return           

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;; always on top  ;;;;;;;;;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+a::  Winset, Alwaysontop, , A


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;; global pen usage ;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#F20::run onenote.exe
        
#F19::run onenote.exe
        
;#F18:: run onenote.exe
        
