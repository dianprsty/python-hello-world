FROM python:alpine3.19

COPY . .

CMD ["python", "main.py"]