FROM python:3.8-slim

RUN apt-get update -y && \
    apt-get install  -y --no-install-recommends  \
    gcc \
    libpq-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install pip --upgrade

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "-m", "awslambdaric" ]
CMD [ "app.main" ]
