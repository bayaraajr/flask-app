# Use an official Python runtime as a parent image
FROM python:slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

# Make port 80 available to the world outside this container
EXPOSE 5000

# Run server.py when the container launches
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
