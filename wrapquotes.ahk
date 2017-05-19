#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


	^'::
		Send ^c
		sleep 300
		clipboard = '%clipboard%'
		; Remove space introduced by WORD
		StringReplace, clipboard, clipboard,%A_SPACE%",", All
		Send ^v
		return 

	^+':: 
		Send ^c
		sleep 300
		clipboard = "%clipboard%"
		; Remove space introduced by WORD
		StringReplace, clipboard, clipboard,%A_SPACE%",", All
		Send ^v
		return 
		
	
	^+[:: 
	^+b::
	^+]::
		Send ^c
		sleep 300 
		clipboard = {%clipboard%}
		; Remove space introduced by WORD
		StringReplace, clipboard, clipboard,%A_SPACE%",", All
		Send ^v
		return
		
		
#Ifwinnotactive ahk_class PX_WINDOW_CLASS       ;affects build and indent in sublime text
	^[:: 
	^b::
	^]::
		Send ^c
		sleep 300
		clipboard = [%clipboard%]
		; Remove space introduced by WORD
		StringReplace, clipboard, clipboard,%A_SPACE%",", All
		Send ^v
		return
		
	^/:: 
		Send ^c
		sleep 300
		clipboard = /*%clipboard%*/
		StringReplace, clipboard, clipboard,%A_SPACE%",", All   ; Remove space introduced by WORD
		Send ^v
		return
#Ifwinnotactive 


	^9:: 
	^0::
	^+9:: 
	^+0::
		Send ^c
		sleep 300
		clipboard = (%clipboard%)
		; Remove space introduced by WORD
		StringReplace, clipboard, clipboard,%A_SPACE%",", All
		Send ^v
		return

	^+5::
			send ^c
			sleep 300
			clipboard = `%{%clipboard%`%}
			StringReplace, clipboard, clipboard,%A_SPACE%",", All
			Send ^v
			
			
			
			
			
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  sublime text print  ;;;;;;;;;;;
;^,::
		Haystack = %clipboard%
		Needle = print
		IfNotInString, Haystack, %Needle%
		{
				Send ^c
				sleep 300
				clipboard = print(%clipboard%)
				StringReplace, clipboard, clipboard,%A_SPACE%",", All
				sleep 300
				Send ^v
				return
		}
else
	    Send ^c
		sleep 300
		StringReplace, clipboard, clipboard, print,, All
		StringReplace, clipboard, clipboard, (,, All  
		StringReplace, clipboard, clipboard, ),, All
		StringReplace, clipboard, clipboard,%A_SPACE%",", All
		Send ^v




		
		
		
		
		
		
		
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	;;;;;;;;;;;;;;;;;;;;;;;;;;;
			
			
^,::
		Haystack = %clipboard%
		Needle = print
		IfNotInString, Haystack, %Needle%
		{
				Send ^l
				sleep 300
				Send ^c
				sleep 300
				clipboard = print(%clipboard%)
				StringReplace, clipboard, clipboard, `r`n, , All
				StringReplace, clipboard, clipboard,%A_SPACE%",", All
				sleep 300
				Send ^v
				Send {Enter}
				Send {Up}{End}
				return
		}
else
		Send ^l
		sleep 300
	    Send ^c
		sleep 300
		StringReplace, clipboard, clipboard, `r`n, , All
		StringReplace, clipboard, clipboard, print,, All
		StringReplace, clipboard, clipboard, (,, All  
		StringReplace, clipboard, clipboard, ),, All
		StringReplace, clipboard, clipboard,%A_SPACE%",", All
		Send ^v		
		Send {Enter}
		Send {Up}{End}
	
			
			
			
			
			
			
			
			
			
			
			
			
			
			