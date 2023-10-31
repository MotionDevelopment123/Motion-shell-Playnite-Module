$playniteDirectory = "C:\Games\Playnite"
$configPath = [System.IO.Path]::Combine($playniteDirectory, "config.json")
$config = [System.IO.File]::ReadAllLines($configPath) | ConvertFrom-Json
$config.AppShutdownScript = "my script"
$config | ConvertTo-Json -Depth 10 | Out-File $configPath -Encoding utf8
