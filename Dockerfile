# Use official Python base image
FROM mcr.microsoft.com/playwright/python:v1.41.1-jammy

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Expose port (for FastAPI/Socket server if needed)
EXPOSE 8000

# Start the bot or API (update as needed)
CMD ["python", "src/main.py"]
