FROM python:3.11-slim

WORKDIR /app 

COPY ./book_catalog/requirements.txt .

RUN pip install -r requirements.txt 

COPY ./book_catalog/app ./app

CMD uvicorn app.main:app --host 0.0.0.0 --port  4000