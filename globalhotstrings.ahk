#Include boil.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  Global Hotstrings   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

::bd::12/31/1986 
::ytc::https://www.youtube.com/channel/UC7dNkh4JZFS4hTDsQeDIfYQ 
::gh::https://github.com/minasso

#IfWinActive, ahk_class ConsoleWindowClass
:r:pypath::C:\Users\andrew\AppData\Local\Programs\Python\Python35\python.exe
:r:py2path::C:\Users\andrew\Anaconda3\pkgs\python-2.7.13-0\python.exe
:r:py3path::C:\Users\andrew\Anaconda3\python.exe
#IfWinActive, ahk_class mintty
:r:pypath::C:/Users/andrew/AppData/Local/Programs/Python/Python35/python.exe
:r:py2path::C:/Users/andrew/Anaconda3/pkgs/python-2.7.13-0/python.exe
:r:py3path::C:/Users/andrew/Anaconda3/python.exe
#IfWinActive


;;;;;;;;;;;; Windows command prompt ;;;;;;;;;;;;;;;

#IfWinActive, ahk_class ConsoleWindowClass
:*:ls::dir
#IfWinActive