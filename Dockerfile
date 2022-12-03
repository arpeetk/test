FROM ubuntu:18.04

RUN apt-get update && yes | apt-get upgrade
RUN apt-get install -y git python-pip
RUN pip install --upgrade pip
RUN pip install tensorflow
RUN apt-get install protobuf-compiler python-pil python-lxml
RUN pip install jupyter
RUN pip install matplotlib

CMD ["python", "linear_regresssion.py"]
