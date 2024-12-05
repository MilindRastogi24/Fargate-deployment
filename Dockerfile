# Use an official Python runtime as a base image
# FROM python:3.9-slim
FROM public.ecr.aws/docker/library/python:3.9-slim
# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the outside world
EXPOSE 8000

# Run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

