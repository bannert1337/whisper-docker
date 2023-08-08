FROM ubuntu:latest

# Install CMake
RUN apt-get update && apt-get install -y python3 git build-essential pip

#
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

# Install repository
RUN pip install git+https://github.com/m-bain/whisperx.git

