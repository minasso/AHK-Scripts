#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive ahk_class Framework::CFrame

#F20::
		sleep 100
		send {alt} ;activate menu 
		sleep 200 ;
		send 9       ;;;;;;;;;;;;;;;;;;;;;;;;;     purple pen .35        ;;;;;;;;;;;;;;;;;;;;;;;;
		return

		
#F19::
		sleep 50
		send {alt} ;activate menu 
		sleep 200 ;
		send 05   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    highlighter         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		return
		
#F18::
		sleep 50
		send {alt} ;activate menu 
		sleep 200 ;
		send 1     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      color wheel        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		return
		
	

	
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      create coordinate axes   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   set each pic to background  ;;;;;;;;;;;;;;;;;;;;;;

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
	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;                rotate right      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;                rotate left       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;          set images as background      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     set full screen with quick access ;;;;;;;;;;;;;;;;;;;;;;;;;;

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

