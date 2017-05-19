#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Scroll down ;;;;;;;;;;;;;;;;;;;;;;;;;
/*
#IfWinActive, Drawboard PDF
#F20::
Send {PgDn} 
Sleep 500 
return
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Scroll up;;;;;;;;;;;;;;;;;;;;;;;;
/*
#IfWinActive, Drawboard PDF
#F19::
Send {PgUp}
sleep 400
return
*/

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Minimize window;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, Drawboard PDF
#F18::
Click,	2101, 0, 0
Sleep 500
Click
Return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Clear annotations;;;;;;;;;;;;;;;

#IfWinActive, Drawboard PDF
^d::
{
Click,	57, 59  ; open menu
Sleep 500
Sleep 300
mousemove,  248, 557     ; page manipulation
Sleep 300
click
sleep 300
Click, 559, 647         ; delete
Sleep 300
send 1
sleep 200
mousemove, 658, 726         ; yes
}
Return


;;;;;;;;;;;;;;;;;;;;;; create bookmark ;;;;;;;;;;;;;;;;;;
^b::
Click, 1897, 356
sleep 300
Click
Click, 875, 165 
sleep 300
mousemove, 1081, 537
Return

;;;pg down x8;;;
^down::
Loop, 4
{
Send {Pgdn}
}
return 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Save and close  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
+s::
Click,	57, 59  ; open menu
Sleep 500
Click,  255, 141  ; save and close
sleep 100 
; send #d
return 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Delete w page manipulation;;;;;;;;;;;;;;;
/*
#IfWinActive, Drawboard PDF
#F18::
{
Click,	41, 43, 0
Sleep 500
Click
Click,  40, 290
Sleep 500
Click
Click,  245, 544
Sleep 500
Click, 575, 462
Sleep 200
}
Return
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;print to one note via clicks;;;;;;;;;;;;;;;;;;;;;;;
/*
#IfWinActive, Drawboard PDF
#F20::
{
MouseMove,	41, 43, 0
Sleep 100                      ;opens first menu
Click
Sleep 1200

Click,  40, 290            ;click to open second menu
Sleep 1500

MouseMove, 369, 309
Sleep 200
Click
Sleep 1200

MouseMove, 1739, 220
Sleep 200
Click
Sleep 2000

MouseMove, 2029, 1150
Sleep 100
Click
Sleep 100
}
Return

*/


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  print to onenote
#IfWinActive, Drawboard PDF
#F20::
{
Send, ^p                       ;print command
Sleep 500     
Send {enter}
Sleep 500
Send {enter}
}
Return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, Drawboard PDF
^+m::
{
Click,	41, 43, 0
Sleep 500
Click
Click, 257, 554 
Sleep 1000
Click, 544, 626
click
Sleep 500
mousemove 675, 709
}
Return





















