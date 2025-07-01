# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependencies and install them
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the app code
COPY app.py .

# Expose the port Flask runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
