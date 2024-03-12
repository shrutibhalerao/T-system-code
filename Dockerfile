# Use Python runtime image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port number the application runs on
EXPOSE 8000

# Command to run the bookstore API application
CMD ["uvicorn", "main.py", "--host", "0.0.0.0", "--port", "8000"]
