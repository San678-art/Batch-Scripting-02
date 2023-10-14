@echo off
set sourceFolder=C:\SourceFolder
set destinationFolder=C:\DestinationFolder

rem Check if the source folder exists
if not exist "%sourceFolder%" (
    echo Source folder does not exist.
    exit /b 1
)

rem Create the destination folder if it doesn't exist
if not exist "%destinationFolder%" (
    mkdir "%destinationFolder%"
)

rem Copy the files and subdirectories
xcopy "%sourceFolder%\*" "%destinationFolder%\" /s /e /h /c /i

rem Check the exit code of xcopy to determine success or failure
if errorlevel 0 (
    echo Files copied successfully.
) else (
    echo An error occurred while copying files.
)

pause
