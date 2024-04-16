FROM python:3.8-slim

RUN apt-get update -y && apt-get install  -y  \
    gcc \
    libpq-dev &&\
    pip install pip --upgrade && \
    COPY . .

RUN pip install -r requirements.txt && \
    pip install pytest

FROM python:3.8-slim

RUN apt-get update -y && apt-get install  -y  \
    gcc \
    libpq-dev &&\
    pip install pip --upgrade

COPY . .

RUN pip install -r requirements.txt && \

ENTRYPOINT [ "python", "-m", "awslambdaric" ]
CMD [ "app.handler" ]
