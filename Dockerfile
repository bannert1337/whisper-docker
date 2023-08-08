FROM ubuntu:latest

# Install CMake
RUN apt-get update && apt-get install -y cmake

# Clone the project files into the Docker image
RUN git clone https://github.com/ggerganov/whisper.cpp

# Set the working directory to the project directory
WORKDIR /whisper.cpp

# Download a Whisper model
RUN bash ./models/download-ggml-model.sh large

# build the main example
RUN make
