FROM python:3.8

WORKDIR /app

COPY requirements.txt /app/

RUN apt -qq update && apt -qq install -y git wget pv jq wget python3-dev ffmpeg mediainfo

COPY . .

RUN pip3 install -r requirements.txt

COPY . /app

CMD ["bash","start.sh"]
