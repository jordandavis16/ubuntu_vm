#!/bin/sh
sudo apt update -y
sudo apt install nodejs npm -y
mkdir -p ~/miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda/miniconda.sh
bash ~/miniconda/miniconda.sh -b -u -p ~/miniconda
rm -rf ~/miniconda/miniconda.sh
source ~miniconda/bin/activate
sudo chown -R $USER:$USER ~/miniconda
conda update -n base -c defaults conda -y
conda config --set auto_activate_base true
conda env create -f environment.yml