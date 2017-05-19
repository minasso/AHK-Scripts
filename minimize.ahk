#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


^Space::
MouseGetPos,,,win
WinGetClass, class, ahk_id  
If class in Progman,WorkerW
 WinActivate, ahk_class Chrome_WidgetWin_1
else
 WinMinimize, A
Return

 