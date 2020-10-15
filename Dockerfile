FROM python:3.8
WORKDIR /code/
COPY requirements requirements/
RUN pip install -r requirements/base.txt
COPY . .
WORKDIR /code/tinycatapi/
ENTRYPOINT [ "python", "manage.py" ]
CMD [ "runserver", "0:8000" ]
