FROM ibotdotout/python-opencv:latest
MAINTAINER simon@idelog.me


ADD ./extract/ /usr/local/src/extract/
RUN apt-get update && apt-get install -y tesseract-ocr && apt-get install -y tesseract-ocr-eng
VOLUME /usr/local/src/extract/samples/

WORKDIR /usr/local/src/extract/

# docker build -t ocr .
# docker run -t -i -v /Users/shill/Projects/ocr/samples/:/usr/local/src/extract/samples/ ocr /bin/bash
