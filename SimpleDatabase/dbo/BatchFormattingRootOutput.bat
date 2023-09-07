@echo off
setlocal enabledelayedexpansion

REM Loop through all immediate subdirectories (excluding the root)
for /d %%D in (*) do (
    REM Create a new folder structure under a "formatted" directory
    set "formattedDir=formatted\%%D"
    
    REM Create the new folder structure if it doesn't exist
    if not exist "!formattedDir!" (
        mkdir "!formattedDir!"
    )
    
    REM Loop through .sql files in the subdirectory and format them
    for %%F in ("%%D\*.sql") do (
        REM Run the SqlFormatter command for each input file and save in the new folder structure
        SqlFormatter "%%~F" /o "!formattedDir!\%%~nxF"
        
        echo "Formatted %%~nxF.sql and saved as !formattedDir!\%%~nxF"
    )
)

echo "All SQL files formatted."
