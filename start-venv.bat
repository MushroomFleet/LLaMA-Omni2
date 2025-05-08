@echo off
echo Activating virtual environment...
call venv\Scripts\activate.bat

echo.
echo Virtual environment activated!
echo.
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo LLaMA-Omni2 - Instructions for running the application
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo To run the application, you need to start three components in separate terminals:
echo.
echo 1. First, start the controller:
echo    python -m llama_omni2.serve.controller --host 0.0.0.0 --port 10000
echo.
echo 2. Next, start the gradio web server:
echo    python -m llama_omni2.serve.gradio_web_server --controller http://localhost:10000 --port 8000 --vocoder-dir models/cosy2_decoder
echo.
echo 3. Finally, start a model worker (replace $model_name with your actual model name):
echo    python -m llama_omni2.serve.model_worker --host 0.0.0.0 --controller http://localhost:10000 --port 40000 --worker http://localhost:40000 --model-path models/$model_name --model-name $model_name
echo.
echo After starting all three components, you can access the web interface at:
echo    http://localhost:8000/
echo.
echo To exit the virtual environment, type 'deactivate' and press Enter.
echo.

cmd /k
