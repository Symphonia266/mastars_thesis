@echo off
REM ==== PNG to PDF Batch using ImageMagick ====
REM Ensure 'magick' command is in your PATH

for %%F in (*.png) do (
    echo Converting %%F to %%~nF.pdf ...
    magick convert "%%F" "%%~nF.pdf"
)

echo All PNG files have been converted.
pause
