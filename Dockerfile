FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip3.8 install -r requirements.txt
ADD . /code
# RUN django-admin startproject sample
WORKDIR /code/sample
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:80"]
