FROM python:2.7.9
RUN pip install sixpack==2.3.1
RUN pip install Flask-Assets==0.12
EXPOSE 5001
ENTRYPOINT ["gunicorn", "--access-logfile", "-", "-b", "0.0.0.0:5001", "--worker-class=gevent", "sixpack.web:start"]
