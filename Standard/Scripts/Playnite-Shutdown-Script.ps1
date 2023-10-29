if ($PlayniteApi.ApplicationInfo.Mode -eq "Fullscreen")
{
START-PROCESS "C:\Playnite\Playnite-Shell\EXE\Windows-Shell.EXE"
}
else
{
    # Execute when running in Fullscreen mode
}
