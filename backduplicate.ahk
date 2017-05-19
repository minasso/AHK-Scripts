#IfWinActive ahk_class Chrome_WidgetWin_1
^/::	
	Send ^. 
	Sleep 1000
	Send, !{Left}
return
#IfWinActive