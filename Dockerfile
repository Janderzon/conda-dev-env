# Building a Docker Image with the latest Ubuntu Version 
# and a basic Python install

FROM ubuntu:latest

ADD install.sh /
ADD jupyter_notebook_config.py /root/.jupyter/
RUN chmod u+x /install.sh
RUN /install.sh
ENV PATH /root/miniconda3/bin:$PATH
WORKDIR /var/notebook/

CMD ["jupyter", "lab"]