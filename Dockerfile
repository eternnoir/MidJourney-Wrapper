FROM ubuntu:22.04

RUN apt-get -y update && apt-get install -y wget build-essential python3-pip

RUN mkdir /app
RUN cd app
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt

ENV MY_ENV_VARIABLE=default_value
ENV DAVINCI_TOKEN=
ENV SERVER_ID=
ENV SALAI_TOKEN=
ENV CHANNEL_ID=

CMD ["python3", "main.py"]