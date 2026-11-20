# Build the CV PDFs using the Docker LaTeX image
# Usage: powershell -ExecutionPolicy Bypass -File build.ps1
#   CV.pdf          public: committed and linked from www.rosudrag.com, no phone number
#   CV-private.pdf  with the phone number, gitignored; send on request

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

foreach ($doc in "CV", "CV-private") {
    Write-Host "Building $doc.pdf..." -ForegroundColor Cyan
    docker run --rm -v "${scriptDir}:/data" -w /data texlive/texlive:latest pdflatex "$doc.tex"
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Build failed (exit code $LASTEXITCODE)" -ForegroundColor Red
        exit $LASTEXITCODE
    }
}
Write-Host "Done: $scriptDir\CV.pdf, $scriptDir\CV-private.pdf" -ForegroundColor Green
