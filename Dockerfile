FROM nvidia/cuda:11.7.1-runtime-ubuntu20.04

RUN apt-get update -y && apt-get install -y python3 python3-pip 
RUN pip3 install --upgrade pip


#COPY pyproject.toml pyproject.toml
#COPY . .
#RUN pip3 install pyproject.toml
#RUN pip3 install -r requirements.txt

ENV FASTCHAT_WORKER_API_EMBEDDING_BATCH_SIZE 1
ENV FASTCHAT_WORKER_API_TIMEOUT 200
RUN pip3 install fschat==0.2.16
