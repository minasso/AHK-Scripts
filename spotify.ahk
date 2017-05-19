#NoEnv  						; 
#Warn  							; Enable warnings to assist with detecting common errors.
SendMode Input  				; use relative coordinates for clicks
SetWorkingDir %A_ScriptDir%     ; Ensures a consistent starting directory.
#Include C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\reload4.ahk                       ;auto reloads script on save
#SingleInstance force
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^!#+s:: Run C:\Users\andrew\AppData\Roaming\Spotify\Spotify.exe