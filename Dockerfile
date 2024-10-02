# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install  -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Copy the run.sh file
COPY run.sh /run.sh

# Make the run.sh file executable
RUN chmod +x run.sh

# Run the run.sh file when the container starts
CMD ["bash", "run.sh"]

# Copy the test.sh file
COPY test.sh /test.sh

# Make the test.sh file executable
RUN chmod +x test.sh