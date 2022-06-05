FROM python:latest
ENV DJANGO_ENV="dev"

WORKDIR /code
COPY . .

RUN apt-get update && apt-get install -y --no-install-recommends git libgraphviz-dev wait-for-it gettext procps && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir -U pip && \
    pip install -r requirements.txt


EXPOSE 8050
CMD ["python", "app.py"]

