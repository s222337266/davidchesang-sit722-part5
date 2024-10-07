FROM python:3.11-slim 

WORKDIR /app

COPY ./inventory_management/requirements.txt .

RUN pip install -r requirements.txt

COPY ./inventory_management/app ./app 

CMD uvicorn app.main:app --host 0.0.0.0 --port 4001 

