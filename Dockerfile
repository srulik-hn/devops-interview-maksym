FROM python:3.8-slim

RUN apt-get update -y && apt-get install  -y  \
    gcc \
    libpq-dev

RUN pip install pip --upgrade

COPY . .

RUN pip install -r requirements.txt

RUN pip install awslambdaric

ENTRYPOINT [ "python", "-m", "awslambdaric" ]
CMD [ "app.main" ]
