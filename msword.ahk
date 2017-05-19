#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


	

#IfWinActive ahk_class OpusApp

#F20::
		sleep 50
		send {alt} ;
		sleep 200 ;
		send JI ;
		sleep 200 ;
		Click, 356, 29 ; 
		return
		
#F19::
		sleep 50
		send {alt} ; 
		sleep 200 ;
		send JI ;
		sleep 200 ;
		send x ;
		return
		
^0::
		sleep 50
		send {alt} ;
		sleep 500 ;
		send wi ;
		sleep 200 ;
		return

#IfWinActive 	