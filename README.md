# T-system-code



Your entry point is main:app where main refers to the main.py file (without the extension) and app refers to the FastAPI instance created inside main.py.

To build and run your Docker container:

Build the Docker image:
docker build -t fastapi_app 

Run the Docker container:
docker run -d -p 8000:8000 fastapi_app
