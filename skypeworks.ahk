#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;#IfWinActive, ahk_class tSkMainForm
;#IfWinActive, ahk_exe Skype.exe

#IfWinActive, Skype
	#F20::
			sleep 100
			send {alt}  ;activate menu 
			sleep 300 ;
			send as 	;select call, share screens
	return


