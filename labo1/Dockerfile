FROM ubuntu:18.04
RUN apt update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
COPY ./webapp/requirements.txt /tmp/requirements.txt 
RUN pip install -qr requirements.txt
ADD /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]


