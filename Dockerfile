FROM python:2.7

COPY requirements.txt /
RUN pip install -r /requirements.txt
COPY redis-migrate.py /app/

ENTRYPOINT [ "/app/redis-migrate.py" ]
