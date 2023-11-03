CD C:\Playnite-Shell
set /p SIZE=<SCREENSIZE.PIXELS
set /p VIDEO=<VIDEO.LOCATION
set /p PLAYNITE=<Playnite.LOCATION
set /p FFPLAY=<FFPLAY.LOCATION
start "" "%PLAYNITE%Playnite.FullscreenApp.exe" --hidesplashscreen
start "" "%FFPLAY%" -left 0 -top 0 %SIZE% -alwaysontop -noborder -autoexit -loglevel quiet -loop 1 "%VIDEO%" 2>NUL