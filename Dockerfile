FROM python:3

WORKDIR /app

RUN pip3 install --upgrade pip
COPY requirements.txt requirements.txt
COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "python3", "web/manage.py", "runserver", "0.0.0.0:8000" ]
