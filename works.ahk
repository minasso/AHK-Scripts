#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; AHK
#IfWinActive, ahk_class Notepad++
#F20::
	Click Right 1767, 1408
	Sleep 100
	Click, 1851, 1260
	Sleep 100
	Click
Return
#IfWinActive

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Drawboard
;;;;;;;;;;;;;;;;;;; Scroll down ;;;;;;;;;;;;;;;
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; print to one note via clicks ;;;;;;;;;;;;;;;;;;;;;;;
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  print to onenote  ;;;;;;;;;;
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








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; myspeed 


DetectHiddenWindows, On

/*
#IfWinNotActive ahk_class PX_WINDOW_CLASS

^Right:: 
		Send ^!i
		;WinActivate ahk_exe MySpeed.exe
		return                              
		
+Right:: 
		
		WinActivate ahk_exe MySpeed.exe
		return		 
!Right::
		;Send ^!i
		Sleep 200
		WinActivate ahk_exe MySpeed.exe
		return
                                                         
*/

;if having trouble, try closing myspeed then the code base will reset/reload itself allowing any changes to appear

!Right:: 
  ;WinActivate, ahk_exe MySpeed.exe
  ControlFocus, ahk_exe MySpeed.exe


^Right:: 
if WinActive("ahk_exe MySpeed.exe")
  {
  WinClose
  Return
  }
if WinExist("ahk_exe MySpeed.exe")
  {
  WinActivate
  ControlFocus, ahk_exe MySpeed.exe
  }
else
  Run "C:\Program Files (x86)\Enounce\MySpeed\MySpeed.exe"
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; onenote
#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive ahk_class Framework::CFrame

#F20::
		sleep 100
		send {alt} ;activate menu 
		sleep 200 ;
		send 9       ;;;;;;;;;;;;;;;;;;;;;;;;;     purple pen .35     ;;;
		return

		
#F19::
		sleep 50
		send {alt} ;activate menu 
		sleep 200 ;
		send 05   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    highlighter    ;;;     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		return
		
#F18::
		sleep 50
		send {alt} ;activate menu 
		sleep 200 ;
		send 1     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      color wheel        ;;;
		return
		
	

	

;;;;;;;;;;;;;;;;;;;;;      create coordinate axes   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*
		
^+a::                     
		WinActivate ahk_class Framework::CFrame
		sleep 500
		send {alt} 
		sleep 200
		send 0
		sleep 300
		send A
		sleep 300
		send {down}{down}
		sleep 300
		send  {right} 
		sleep 300
		send {enter}
		return
*/

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   set each pic to background  ;;;;;;;;;;;;;;;;;;;;;;

^+m::

WinActivate, Untitled page - OneNote ahk_class Framework::CFrame
Sleep, 33
Send, {Appskey}
WinActivate,  ahk_class Net UI Tool Window
Sleep, 33
Send, {s}
WinActivate, Untitled page - OneNote ahk_class Framework::CFrame
Sleep, 33
; Send, {LControl Down}{Down}{Down}{Down}{LControl Up}
Return
	

;;;;;;;;;;;;;;;;;;;;;;;;;        rotate right      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^r::
WinActivate, Untitled page - OneNote ahk_class Framework::CFrame
Sleep, 33
Send, {Appskey}
WinActivate,  ahk_class Net UI Tool Window
Sleep, 33
Send, {o}
sleep 100
Send, {o}
sleep 100
Send, {enter}
Send, {r}
WinActivate, Untitled page - OneNote ahk_class Framework::CFrame
Sleep, 33
Send, {LControl Down}{Down}{Down}{Down}{LControl Up}
Return

^!r::
Click right
sleep 600
Send uu
Send {Enter}
send {enter}
Return

;;;;;;;;;;;;;;;;;;;;;;;;     rotate left       ;;;;;;;;;;;;;;;;;;;;;;;;;

^l::
WinActivate, Untitled page - OneNote ahk_class Framework::CFrame
Sleep, 33
Send, {Appskey}
WinActivate,  ahk_class Net UI Tool Window
Sleep, 33
Send, {o}
sleep 100
Send, {o}
sleep 100
Send, {enter}
Send, {l}
WinActivate, Untitled page - OneNote ahk_class Framework::CFrame
Sleep, 33
Send, {LControl Down}{Down}{Down}{Down}{LControl Up}
Return

^!l::
Click right
sleep 600
Send uu
Send {Enter}
send {down}
send {enter}
Return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      set images as background      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^+.::
sleep 500
Send {alt} 
sleep 500
send 0c 
sleep 300
send {down}{down}{down}{down}{down} 
sleep 300
send {enter}
return



;;;;;;;;;;;;;;;;;;;;;;;;;;;; set full screen with quick access ;;;;;;;;;;;;;;;;;;;;;;;;;;

	/*

^+f::
Sleep 200
Click 1900, 22
Sleep 500
Click 1924, 22 
sleep 600
Send down down down enter
Return




;  1914, 275


*/





#IfWinActive



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; powerpoint


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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; skype



;#IfWinActive, ahk_class tSkMainForm
;#IfWinActive, ahk_exe Skype.exe

#IfWinActive, Skype
	#F20::
			sleep 100
			send {alt}  ;activate menu 
			sleep 300 ;
			send as 	;select call, share screens
	return



