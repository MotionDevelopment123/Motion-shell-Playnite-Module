CD C:\Playnite-Shell
set /p PLAYNITELOCATION=<Playnite.LOCATION
set /p FFPLAY=<FFPLAY.LOCATION
start "" "%PLAYNITELOCATION%\Playnite.fullscreenapp.exe" --hidesplashscreen
start "" "%FFPLAY%" -left 0 -top 0 -x 1920 -y 1080 -alwaysontop -noborder -autoexit -loglevel quiet -loop 1 "C:\Videos\splash.mp4" 2>NUL