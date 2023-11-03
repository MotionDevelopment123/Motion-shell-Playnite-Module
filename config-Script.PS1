$startScript = 'if((get-process \"EXPLORER\" -ea SilentlyContinue) -eq $Null){ \r\n        \"Not Running\" \r\n        #not running\r\n}\r\n\r\nelse{ \r\n        \"Running\"\r\n        if ($PlayniteApi.ApplicationInfo.Mode -eq \"Fullscreen\")\r\n        {\r\n        TASKKILL /IM EXPLORER.EXE /F\r\n        START-PROCESS \"G:\\SteamLibrary\\steamapps\\common\\DSX\\Openmin.bat\"\r\n        }\r\n        else\r\n        {\r\n            #DESKTOPmode\r\n        }\r\n    \r\n }'
$exitScript = 'if ($PlayniteApi.ApplicationInfo.Mode -eq \"Fullscreen\")\r\n{\r\nSTART-PROCESS \"C:\\SHELL\\SHELL.EXE\"\r\n}\r\nelse\r\n{\r\n    # Execute when running in Fullscreen mode\r\n}'
$playniteDirectory = GET-CONTENT 'C:\Playnite-Shell\Playnite.LOCATION' -RAW
$configPath = [System.IO.Path]::Combine($playniteDirectory, 'config.json')
$config = [System.IO.File]::ReadAllLines($configPath) | ConvertFrom-Json
$config.AppStartupScript = $startScript
$config.AppShutdownScript = $exitScript
$config | ConvertTo-Json -depth 10 | Out-File $configPath -Encoding utf8