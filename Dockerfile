FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "-m", "flask", "--app", "server", "run", "--host", "0.0.0.0"]