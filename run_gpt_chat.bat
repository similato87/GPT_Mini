@echo off
setlocal

:: Check if OPENAI_API_KEY environment variable is set
set OPENAI_API_KEY=
call :getEnvVar OPENAI_API_KEY OPENAI_API_KEY
if "%OPENAI_API_KEY%"=="" (
    echo Environment variable for OPENAI_API_KEY not found.
    set /p OPENAI_API_KEY="Enter your OpenAI API Key: "
    setx OPENAI_API_KEY "%OPENAI_API_KEY%" /M
    echo Please restart this script for the changes to take effect.
    pause
    exit
)

:: Install the openai Python package
echo Installing required packages...
pip install openai

:: Clear the console
cls

:: Run the Python program
echo Running the program...
python gpt_chat.py

pause
endlocal
goto :eof

:getEnvVar
set "%2="
for /f "usebackq tokens=2,*" %%A in (`reg query "HKCU\Environment" /v %1 2^>nul`) do set "%2=%%B"
goto :eof
