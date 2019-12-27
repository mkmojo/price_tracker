# https://pythonspeed.com/articles/activate-virtualenv-dockerfile/
FROM python:alpine
COPY requirements.txt /opt 
RUN pip install -r /opt/requirements.txt
ADD App.py /opt
EXPOSE 8080
ENTRYPOINT ["python", "/opt/App.py"]
