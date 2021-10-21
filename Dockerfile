FROM python:3

WORKDIR /IMAGE-CLASSIFIER-EXAMPLE

ADD . /IMAGE-CLASSIFIER-EXAMPLE

COPY ./backend/Image-upload-API/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "./backend/Image-upload-API/flask-api/main.py","--host=0.0.0.0"]

