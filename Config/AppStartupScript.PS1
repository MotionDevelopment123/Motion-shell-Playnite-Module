$playniteDirectory = "C:\test"
$configPath = [System.IO.Path]::Combine($playniteDirectory, "config.json")
$config = [System.IO.File]::ReadAllLines($configPath) | ConvertFrom-Json
$config.AppShutdownScript = "my script"
$config | ConvertTo-Json -depth 2 | Out-File $configPath -Encoding utf8