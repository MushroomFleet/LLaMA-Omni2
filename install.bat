@echo off
echo Creating Python virtual environment...
python -m venv venv

echo Activating virtual environment...
call venv\Scripts\activate.bat

echo Installing required packages...
pip install -r requirements.txt

echo Installing LLaMA-Omni2 in development mode...
pip install -e .

echo.
echo Installation completed successfully!
echo To activate the virtual environment in the future, run 'start-venv.bat'
echo.
pause
