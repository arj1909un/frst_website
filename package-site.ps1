$ErrorActionPreference = 'Stop'

$distPath = Join-Path $PSScriptRoot 'dist'
$zipPath = Join-Path $PSScriptRoot 'pragyabakery-site.zip'
$publicPath = Join-Path $PSScriptRoot 'pragyabakery\public'
$stylePath = Join-Path $PSScriptRoot 'pragyabakery\src\styles\style.css'

if (Test-Path $distPath) {
    Remove-Item $distPath -Recurse -Force
}

if (Test-Path $zipPath) {
    Remove-Item $zipPath -Force
}

New-Item -ItemType Directory -Path $distPath -Force | Out-Null

Copy-Item -Path (Join-Path $publicPath '*') -Destination $distPath -Recurse -Force
Copy-Item -Path $stylePath -Destination $distPath -Force

Compress-Archive -Path (Join-Path $distPath '*') -DestinationPath $zipPath -Force

Write-Host "Packaging complete. Output: $zipPath"
