$playniteDirectory = "C:\Games\Playnite"
$configPath = [System.IO.Path]::Combine($playniteDirectory, "config.json")
$config = [System.IO.File]::ReadAllLines($configPath) | ConvertFrom-Json
$config.AppStartupScript = "if((get-process \"EXPLORER\" -ea SilentlyContinue) -eq $Null){ \r\n        \"Not Running\" \r\n        #not running\r\n}\r\n\r\nelse{ \r\n        \"Running\"\r\n        if ($PlayniteApi.ApplicationInfo.Mode -eq \"Fullscreen\")\r\n        {\r\n        TASKKILL /IM EXPLORER.EXE /F\r\n        START-PROCESS \"G:\\SteamLibrary\\steamapps\\common\\DSX\\Openmin.bat\"\r\n        }\r\n        else\r\n        {\r\n            #DESKTOPmode\r\n        }\r\n    \r\n }"
$config | ConvertTo-Json -Depth 10 | Out-File $configPath -Encoding utf8
