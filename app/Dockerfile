FROM python:3.9-slim

RUN mkdir -p /app
WORKDIR /app

RUN useradd -m runner && chown -R runner /app

COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

USER runner

ENTRYPOINT [ "gunicorn", "--certfile=/home/runner/ssl/crt/time-in-moscow.crt" , "--keyfile=/home/runner/ssl/time-in-moscow.key" , "-b", "0.0.0.0:8000", "app:app"]

