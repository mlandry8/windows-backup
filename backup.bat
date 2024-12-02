@echo off
setlocal enabledelayedexpansion

REM Check if directories.txt exists
if not exist directories.txt (
    echo directories.txt not found!
    exit /b 1
)

REM Check for dry-run flag
set "dryrun="
if "%1"=="--dry-run" (
    set "dryrun=/L"
)

REM Read directories.txt line by line
for /f "tokens=1,2 delims=," %%i in (directories.txt) do (
    set "source_dir=%%i"
    set "dest_dir=%%j"

    REM Perform the backup using robocopy
    echo ==============================================================================
    echo    Backing up !source_dir! to !dest_dir!
    echo ==============================================================================
    robocopy "!source_dir!" "!dest_dir!" /mir /r:1 /w:1 %dryrun%
)

endlocal