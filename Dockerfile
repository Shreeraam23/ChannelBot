# Use the Python base image
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /usr/src/app

# Install system dependencies required for psycopg2
RUN apt-get update && apt-get install -y \
    libpq-dev gcc

# Copy requirements.txt
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Specify the command to run the app
CMD ["python", "app.py"]
