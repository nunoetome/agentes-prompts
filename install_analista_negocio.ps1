$ErrorActionPreference = "Stop"

$scriptDir = $PSScriptRoot
if (-not $scriptDir) { $scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path }

$source = Join-Path $scriptDir "agentes_open_code\_opencode\_agentes\analista_negocio\analista_negocio.md"
$destinationDir = Join-Path $scriptDir "agentes_open_code"
$destination = Join-Path $destinationDir "analista_negocio.md"

if (-not (Test-Path $destinationDir)) {
    New-Item -ItemType Directory -Path $destinationDir -Force | Out-Null
}

Copy-Item -Path $source -Destination $destination -Force
Write-Host "Agent copiado para: $destination"