# Base image
FROM python:3.9-slim-buster

# Set working directory
WORKDIR /app

RUN apt update && apt install ffmpeg libsm6 libxext6  git -y

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app files
COPY . .

Expose 5000

CMD ["python3","app.py"]
