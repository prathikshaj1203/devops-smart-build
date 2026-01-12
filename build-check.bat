@echo off
echo Starting Build Validation...

if exist index.html (
    echo index.html found
    echo BUILD STATUS: SUCCESS > build_report.txt
) else (
    echo index.html not found
    echo BUILD STATUS: FAILURE > build_report.txt
    exit /b 1
)

echo BUILD TIME: %DATE% %TIME% >> build_report.txt
