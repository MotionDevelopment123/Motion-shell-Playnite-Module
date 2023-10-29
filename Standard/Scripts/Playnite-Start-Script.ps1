if((get-process "EXPLORER" -ea SilentlyContinue) -eq $Null){ 
        "Not Running" 
        #not running
}

else{ 
        "Running"
        if ($PlayniteApi.ApplicationInfo.Mode -eq "Fullscreen")
        {
        TASKKILL /IM EXPLORER.EXE /F
        START-PROCESS "G:\SteamLibrary\steamapps\common\DSX\Openmin.bat"
        }
        else
        {
            #DESKTOPmode
        }
    
 }