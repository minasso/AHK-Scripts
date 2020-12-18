#NoEnv  						; 
#Warn  							; Enable warnings to assist with detecting common errors.
SendMode Input  				; use relative coordinates for clicks
SetWorkingDir %A_ScriptDir%     ; Ensures a consistent starting directory.
#SingleInstance force

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;#Include reload.ahk    ;auto reloads script on save  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetTimer,UPDATEDSCRIPT,1000

UPDATEDSCRIPT:
	FileGetAttrib,attribs,%A_ScriptFullPath%
	IfInString,attribs,A
		{
		FileSetAttrib,-A,%A_ScriptFullPath%
		SplashTextOn,,,Updated script,
		Sleep,500
		Reload
		SplashTextOff
		}
	Return