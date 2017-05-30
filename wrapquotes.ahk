#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;   wrap ''  :::::::::::::::::::::::::::

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
		
;;;;;;;;;;;;;;;;;;;;;;   wrap {}  :::::::::::::::::::::::::::

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
		
;;;;;;;;;;;;;;;;;;;;;;   wrap []   :::::::::::::::::::::::::::
		
#Ifwinnotactive ahk_class PX_WINDOW_CLASS       ;sublime text, affects build and indent
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
		
;;;;;;;;;;;;;;;;;;;;;;   wrap /*  :::::::::::::::::::::::::::
#IfWinActive ahk_class Notepad++
	^/:: 
		Send ^c
		sleep 300
		clipboard = /*%clipboard%*/
		StringReplace, clipboard, clipboard,%A_SPACE%",", All   ; Remove space introduced by WORD
		Send ^v
		return
#IfWinActive 

;;;;;;;;;;;;;;;;;;;;;;   wrap ()  :::::::::::::::::::::::::::
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
			
			
			
			
			
;;;;;;;;;;;;;;;;;;;;  sublime text wrap print  ;;;;;;;;;;;
; commented out
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
		
		
		
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
;attempt 2?
			
			
;^,::
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
	
			
			
			
			
	