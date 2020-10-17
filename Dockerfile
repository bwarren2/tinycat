FROM python:3.8
WORKDIR /code/
RUN apt-get update \
    && apt-get -y --no-install-recommends install postgresql-client=11+200+deb10u4 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY requirements requirements/
RUN pip install -r requirements/base.txt
COPY . .
WORKDIR /code/tinycatapi/
ENTRYPOINT [ "python", "manage.py" ]
CMD [ "runserver", "0:8000" ]
