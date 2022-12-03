FROM tensorflow/tensorflow

RUN apt-get update && yes | apt-get upgrade
RUN apt-get install -y git python3-pip
RUN pip3 install --upgrade pip
#RUN python3 -m pip install tensorflow
RUN pip3 install matplotlib

RUN mkdir tf-linear-regression
WORKDIR tf-linear-regression

COPY linear_regression.py .

CMD ["python", "linear_regression.py"]
