#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;for navigating powerpoint slides;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, ahk_class screenClass 

#F20:: 
Send {Right} 
Sleep 500 
Return 


#IfWinActive, ahk_class screenClass 
#F18:: 
Send {esc} 
Sleep 500 
Return


#IfWinActive, ahk_class screenClass 
#F19:: 
Send {Left} 
Sleep 500 
Return

#IfWinActive, ahk_class PPTFrameClass

#F18:: 
sleep 50
send {alt}   ;Activate menu hotkeys
    sleep 200   ;Waits for menu to activate, you may need to tweak this
    send sc   ;Select slideshow
    return
Sleep 500 
Return 

#IfWinActive, ahk_class PPTFrameClass

#F20::
Send {Right}
Sleep 500
Return


#IfWinActive, ahk_class PPTFrameClass

#F19::
Send {Left}
Sleep 500
Return

