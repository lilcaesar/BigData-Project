FROM tensorflow/tensorflow:latest-gpu-jupyter

WORKDIR /home
COPY . /home

RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get -y install software-properties-common 
RUN add-apt-repository ppa:deadsnakes/ppa -y 
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update
RUN apt-get -y install python3.6 libpython3.6 
RUN apt-get -y install python3-pip
RUN apt-get -y install vim
RUN apt-get -y install htop
RUN apt-get -y install git
RUN pip3 install jupyterlab

EXPOSE 9998:9998
CMD ["jupyter", "lab", "--port", "9998", "--ip", "0.0.0.0", "--allow-root"]

