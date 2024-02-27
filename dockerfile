# Use an official Python runtime as a parent image
FROM python:3.8

# Set environment variables (optional)
ENV PYTHONUNBUFFERED 1

# Set the working directory inside the container
WORKDIR /app

# Install dependencies (requirements.txt should be in your project directory)
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy your Django project files into the container
COPY . /app/

# Expose the port your Django app will run on
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
