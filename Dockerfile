FROM nvidia/cuda:11.4.0-cudnn8-runtime-ubuntu20.04

# Install Python and required packages
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install torch

# Copy the Python script into the container
COPY stress.py /app/

# Set the working directory
WORKDIR /app

# Run the Python script
CMD ["python3", "stress.py"]
