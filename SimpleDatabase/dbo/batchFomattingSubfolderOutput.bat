@echo off
setlocal enabledelayedexpansion

REM Loop through all immediate subdirectories (excluding the root)
for /d %%D in (*) do (
    REM Check if the subfolder has .sql files
    dir /b /a-d "%%D\*.sql" >nul 2>&1
    if not errorlevel 1 (
        REM Get the path of the "formatted" folder within the current subdirectory
        set "formattedDir=%%D\formatted"
        
        REM Create the "formatted" folder if it doesn't exist
        if not exist "!formattedDir!" (
            mkdir "!formattedDir!"
        )
        
        REM Loop through .sql files in the subdirectory and format them
        for %%F in ("%%D\*.sql") do (
            REM Run the SqlFormatter command for each input file and save in the "formatted" folder
            SqlFormatter "%%~F" /o "!formattedDir!\%%~nxF"
            
            echo "Formatted %%~nxF.sql and saved as !formattedDir!\%%~nxF"
        )
    )
)

echo "All SQL files formatted."
