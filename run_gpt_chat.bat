@echo off
setlocal

:: Check if OPENAI_API_KEY environment variable is set
set OPENAI_API_KEY=
for /F "usebackq tokens=*" %%i in (`setx OPENAI_API_KEY /K`) do set OPENAI_API_KEY=%%i

if "%OPENAI_API_KEY%"=="" (
    echo Environment variable for OPENAI_API_KEY not found.
    set /p OPENAI_API_KEY="Enter your OpenAI API Key: "
    setx OPENAI_API_KEY "%OPENAI_API_KEY%" /M
)

:: Install the openai Python package
echo Installing required packages...
pip install openai

:: Run the Python program
echo Running the program...
python gpt_chat.py

endlocal
