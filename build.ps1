# Build CV PDF using Docker LaTeX image
# Usage: powershell -ExecutionPolicy Bypass -File build.ps1

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "Building CV.pdf..." -ForegroundColor Cyan
docker run --rm -v "${scriptDir}:/data" -w /data texlive/texlive:latest pdflatex CV.tex

if ($LASTEXITCODE -eq 0) {
    Write-Host "Done: $scriptDir\CV.pdf" -ForegroundColor Green
} else {
    Write-Host "Build failed (exit code $LASTEXITCODE)" -ForegroundColor Red
}
