# This docker file is used for local development via docker-compose
# Creating image based on official python3 image
FROM python:3.13

# Fix python printing
ENV PYTHONUNBUFFERED 1

COPY requirements.txt ./
RUN pip install -r requirements.txt

# Set the working directory in the container
WORKDIR /app

# Copy the Django app's source code to the container
COPY {{cookiecutter.project_slug}}/ /app/