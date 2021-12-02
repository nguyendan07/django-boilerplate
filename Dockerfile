FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

# Install poetry:
RUN pip install poetry

# Copy in the config files:
COPY pyproject.toml poetry.lock /code/
# Install only dependencies:
RUN poetry install --no-root --no-dev

COPY . /code/