#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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