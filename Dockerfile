FROM python:3.8
WORKDIR /code/
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT [ "python", "tinycatapi/manage.py" ]
CMD [ "runserver", "0:8000" ]
