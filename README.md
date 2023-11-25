# Motion-Shell - Playnite Module
This module is a part of Motion-Shell.
This module is a tool to add a Splash screen and set Playnite as the shell so that when logging in you are greeted by your chosen video and Playnite Fullscreen without any Windows Shell untill you exit Playnite or switch to desktop mode.

### Prerequisites:
-  Playnite installed
- Playnite fully closed when installing (Check system tray bottom right and Task Manager to ensure its not running in the background)
- [FFPLAY](https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip)
- Video to set as splash

### Settings and configuration:
~~If you want to change where the program looks for your FFPLAY, your video and Playnite there is a settings app included at `C:\Playnite-Shell\`~~ Broken in the merge, coming in the next release!


>~~The settings program also allows you to set your screen size for the splash video, please set as laid out in the examples below:~~

>~~1920 x 1080 - Full HD screen:~~
>~~> -x 1920 -y 1080~~

>~~3840 x 2160 - 4K screen:~~
>~~> -x 3840 -y 2160~~

^ Due to the merge this has been added to the installation and the settings app will be apart of the next Motion-Shell release.

List of programs used to compile:
- [Advanced BAT to EXE Converter PRO](https://www.battoexeconverter.com/)
  - Splash-Shell.exe - https://github.com/MotionDevelopment123/playnite-shell/blob/main/Splash-Shell.bat
  - Windows-Shell.exe - https://github.com/MotionDevelopment123/playnite-shell/blob/main/Windows-Shell.bat
