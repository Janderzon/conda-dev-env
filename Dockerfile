# Building a Docker Image with the latest Ubuntu Version 
# and a basic Python install

FROM ubuntu:latest

ADD install.sh .
RUN chmod u+x install.sh
RUN install.sh
ENV PATH /root/miniconda3/bin:$PATH

CMD ["ipython"]