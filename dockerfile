# Use an official Python runtime as a parent image
FROM ubuntu:latest

# Set the working directory in the container to /app
WORKDIR /app

RUN apt-get update && \
apt-get install -y python3 python3-pip

# Add the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python3", "app.py"]
