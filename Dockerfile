FROM python:3.9.5-slim

RUN apt-get update \
    && apt-get -y install sqlite3 git

WORKDIR /app
RUN git clone https://github.com/NovationMenu/urlshortener.git .


RUN pip install -r requirements.txt

RUN export FLASK_APP=app.py && export FLASK_ENV=development

ENTRYPOINT [ "bash", "-l", "-c" ]
CMD [ "python3 app.py" ]
