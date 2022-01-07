FROM python:3.10-alpine3.15

#Environment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE=1
ENV APP_NAME="python-env"

COPY ./src /usr/src/

COPY ./requirements.txt /usr/requirements.txt

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r /usr/requirements.txt

ENV WORKING_DIRECTORY="/usr/src"
WORKDIR ${WORKING_DIRECTORY}

CMD ["python", "/usr/src/main.py"]
