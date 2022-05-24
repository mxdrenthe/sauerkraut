FROM python:3.12-alpine3.18
WORKDIR /app
RUN pip install Flask gunicorn
COPY app .
ENTRYPOINT [ "gunicorn", "wsgi", "-b 0.0.0.0:8000" ]