FROM ubuntu:16.04
FROM python:3.8-slim-buster
RUN apt-get  update && apt-get install telnet
RUN apt-get update && apt-get install -y   curl
RUN apt-get update && apt-get install -y ffmpeg
CMD /bin/bash

