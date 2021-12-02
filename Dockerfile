FROM python:3.9-slim-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ADD . /code
WORKDIR /code

RUN pip install --upgrade pip

# Install poetry:
RUN pip install poetry

# Install only dependencies:
RUN poetry install --no-root --no-dev

COPY . /code/