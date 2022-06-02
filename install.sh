#!/bin/bash
#
# Script to install Linux System Tools
# and basic Python components

# General linux
apt-get update
apt-get upgrade -y
apt-get install -y bzip2 gcc git htop wget screen nano
apt-get upgrade -y bash
apt-get clean

# Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O \
    Miniconda.sh
bash Miniconda.sh -b
rm -rf Miniconda.sh
export PATH="/root/miniconda3/bin:$PATH"

# Python libraries
conda install -y jupyter
conda install -y jupyterlab
conda install -y numpy
conda install -y pytables
conda install -y pandas
conda install -y scipy
conda install -y matplotlib
conda install -y seaborn
conda install -y quandl
conda install -y scikit-learn
conda install -y openpyxl
conda install -y xlrd xlwt
conda install -y pyyaml

pip install --upgrade pip
pip install q
pip install plotly
pip install cufflinks
pip install tensorflow
pip install keras
pip install eikon

# Start Jypyter Lab
jupyter lab &