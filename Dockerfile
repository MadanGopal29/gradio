# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Gradio file into the container
COPY gradio_file.py /app

# Install Gradio
RUN pip install gradio

# Expose the port number on which the Gradio app will run
EXPOSE 7860

# Command to run the Gradio app when the container is launched
CMD ["python", "gradio_file.py", "--host", "0.0.0.0", "--port", "7860"]

