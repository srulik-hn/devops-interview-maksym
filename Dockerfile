FROM python:3.8-slim

COPY lib.py requirements.txt ./

RUN apt-get update -y && \
    apt-get install  -y --no-install-recommends  \
    gcc \
    libpq-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install pip --upgrade && \
    pip install --no-cache-dir -r requirements.txt

COPY app.py .

ENTRYPOINT [ "python", "-m", "awslambdaric" ]
CMD [ "app.main" ]
