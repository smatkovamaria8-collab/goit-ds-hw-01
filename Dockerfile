
FROM python:3.14-slim


ENV APP_HOME=/main


WORKDIR $APP_HOME

COPY Pipfile Pipfile.lock ./


RUN pip install pipenv
RUN pipenv install --deploy

COPY . . 

EXPOSE 1000


ENTRYPOINT ["python", "main.py"]
