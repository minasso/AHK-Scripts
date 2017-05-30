#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



#IfWinActive ahk_class PX_WINDOW_CLASS
^v::^+v
/*
^+k::^x
	*/
#IfWinActive 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Quick way to get to python sublime repl
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

/*
	^.::
	send {alt}
sleep 300
	
	Send trr
	sleep 300
	
	Send {right}
	sleep 300
	
	Send {down 10}
	sleep 300
	
	Send {right}
	sleep 300
	
	Send r
	sleep 300
	
	Send {enter}
	sleep 300
	
	Return
	*/
^.::	
WinMenuSelectItem,ahk_class PX_WINDOW_CLASS , , Tools, SublimeREPL, Python, Python - RUN current file 