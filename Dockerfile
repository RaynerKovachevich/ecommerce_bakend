# Use the oficial Python image
FROM python:3.10-slim


# Set the working directory
WORKDIR /app

#Copy the requeriments and app file
COPY . .

# Install dependencies
RUN python -m venv venv && \
    venv/bin/pip install flask

# Expose port 5000
EXPOSE 5000

# Run the app
CMD ["./venv/bin/python", "app.py"]


# Install dependencies
RUN python -m venv venv && \
    venv/bin/pip install flask flask-sqlalchemy