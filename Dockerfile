# Use the official Python image as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask application code to the container
COPY . .

# Set the environment variable for Flask
ENV FLASK_APP=project/app.py

# Expose the port on which the Flask app will run (default is 5000)
EXPOSE 5000

# Set the command to run when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]

