#Include boil.ahk

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;  mouse keys ;;;;;;;;;;;;;;;;;;  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^MButton::Volume_Mute

XButton1::Shift
return
XButton2::Ctrl
return

^WheelDown::Volume_Down
return

^WheelUp::Volume_Up
return


+WheelUp::Send ^!f
+WheelDown::Send ^!s


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;  minimize window  ;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^Space::
!Space::
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
;;;;;;;;;;;;;;;;;;;;   spotify  ;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^!#+s:: Run C:\Users\andrew\AppData\Roaming\Spotify\Spotify.exe
;;      works together with pederson spot 

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
