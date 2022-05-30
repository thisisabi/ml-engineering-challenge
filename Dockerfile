FROM python:3.9

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir -r /app/requirements.txt

COPY ./main.py slr.pkl /app/

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
