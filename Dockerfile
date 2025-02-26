# Use Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Install dependencies
RUN pip install flask flask-mysqldb

# Expose port
EXPOSE 5000

# Run application
CMD ["python", "app.py"]
