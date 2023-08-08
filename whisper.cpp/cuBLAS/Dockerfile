FROM ubuntu:latest

# Install Dependencies
RUN apt-get update && apt-get install -y cmake git curl build-essential 

# Clone the project files into the Docker image
RUN git clone https://github.com/ggerganov/whisper.cpp

# Set the working directory to the project directory
WORKDIR /whisper.cpp

# Download a Whisper model
RUN bash ./models/download-ggml-model.sh large

# build with CLBlast support
RUN make clean ; WHISPER_CUBLAS=1 make -j
