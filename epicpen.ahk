#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive ahk_exe EpicPen.exe

#F20::
		sleep 500
		send ^+2
		return
		
#F19::
		sleep 500
		send ^+3
		return
		
#F18::
		sleep 500
		send ^+7
		return

/*
^!k::   sleep 200
		send ^+3
		return
		
		
#F18::  sleep 500
		send ^+7
		return
	*/

#IfWinActive 