$playniteDirectory = "C:\Games\Playnite"
$configPath = [System.IO.Path]::Combine($playniteDirectory, "config.json")
$config = [System.IO.File]::ReadAllLines($configPath) | ConvertFrom-Json
$config.AppShutdownScript = "if ($PlayniteApi.ApplicationInfo.Mode -eq \"Fullscreen\")\r\n{\r\nSTART-PROCESS \"C:\\SHELL\\SHELL.EXE\"\r\n}\r\nelse\r\n{\r\n    # Execute when running in Fullscreen mode\r\n}"
$config | ConvertTo-Json -Depth 10 | Out-File $configPath -Encoding utf8
