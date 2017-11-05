#!/bin/bash -x
source ~/.bashrc

## roll you own python 3.6.3 on ubuntu 16.04
## includes most anaconda libraries for deep learning
## will get all te necessary components for the first few lessons of the 
## fast.ai course season 2 - which is pytorch dependant
##
## at the end of the install, log onto the console and run the following to
## set the jupyter notebook password, otherwise you won't be able to log on
## 



## set up some folders

sudo mkdir ~/downloads

sudo mkdir ~/data
sudo bash -c 'chown -R ubuntu ~/data'
sudo bash -c 'chown -R ubuntu ~/downloads'


## fecth the data
cd downloads
sudo wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
sudo wget http://files.fast.ai/data/dogscats.zip
sudo wget "http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.44-1_amd64.deb" -O "cuda-repo-ubuntu1604_8.0.44-1_amd64.deb"


## set properties of the system and install tools
sudo -i  apt-get update
sudo -i DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

sudo -i apt-get --assume-yes install tmux build-essential gcc g++ make binutils htop zip 
sudo -i apt-get --assume-yes install software-properties-common

## install cuda
sudo dpkg -i cuda-repo-ubuntu1604_8.0.44-1_amd64.deb
sudo apt-get update
sudo apt-get -y install cuda
sudo modprobe nvidia
nvidia-smi
#rm -f cuda-repo-ubuntu1604_8.0.44-1_amd64.deb


## prepare for the python install
sudo apt-get install -y build-essential checkinstall
sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev zlib1g-dev
cd /usr/src

## install python 3.6.3
sudo sudo tar xzf ~/downloads/Python-3.6.3.tgz
cd Python-3.6.3
sudo ./configure --enable-optimizations
sudo -H make altinstall
python3.6 -V﻿

## install the Anaconda equivelent libraries for python 3.6.3
sudo -H python3.6 -m pip install alabaster
sudo -H python3.6 -m pip install anaconda-client
sudo -H python3.6 -m pip install anaconda-project
sudo -H python3.6 -m pip install asn1crypto
sudo -H python3.6 -m pip install astroid
sudo -H python3.6 -m pip install astropy
sudo -H python3.6 -m pip install babel
sudo -H python3.6 -m pip install backports.shutil_get_terminal_size
sudo -H python3.6 -m pip install bcolz
sudo -H python3.6 -m pip install beautifulsoup4
sudo -H python3.6 -m pip install bitarray
sudo -H python3.6 -m pip install bkcharts
sudo -H python3.6 -m pip install blaze
sudo -H python3.6 -m pip install bleach
sudo -H python3.6 -m pip install bokeh
sudo -H python3.6 -m pip install boto
sudo -H python3.6 -m pip install bottleneck
sudo -H python3.6 -m pip install cachecontrol
sudo -H python3.6 -m pip install certifi
sudo -H python3.6 -m pip install cffi
sudo -H python3.6 -m pip install chardet
sudo -H python3.6 -m pip install click
sudo -H python3.6 -m pip install cloudpickle
sudo -H python3.6 -m pip install clyent
sudo -H python3.6 -m pip install colorama
sudo -H python3.6 -m pip install comtypes
sudo -H python3.6 -m pip install conda
sudo -H python3.6 -m pip install conda-build
sudo -H python3.6 -m pip install conda-env
sudo -H python3.6 -m pip install contextlib2
sudo -H python3.6 -m pip install cryptography
sudo -H python3.6 -m pip install cycler
sudo -H python3.6 -m pip install cython
sudo -H python3.6 -m pip install cytoolz
sudo -H python3.6 -m pip install dask
sudo -H python3.6 -m pip install datashape
sudo -H python3.6 -m pip install decorator
sudo -H python3.6 -m pip install distlib
sudo -H python3.6 -m pip install distributed
sudo -H python3.6 -m pip install docutils
sudo -H python3.6 -m pip install entrypoints
sudo -H python3.6 -m pip install et_xmlfile
sudo -H python3.6 -m pip install fastcache
sudo -H python3.6 -m pip install filelock
sudo -H python3.6 -m pip install flask
sudo -H python3.6 -m pip install flask-cors
sudo -H python3.6 -m pip install gevent
sudo -H python3.6 -m pip install glob2
sudo -H python3.6 -m pip install greenlet
sudo -H python3.6 -m pip install h5py
sudo -H python3.6 -m pip install heapdict
sudo -H python3.6 -m pip install html5lib
sudo -H python3.6 -m pip install icc_rt
sudo -H python3.6 -m pip install idna
sudo -H python3.6 -m pip install imageio
sudo -H python3.6 -m pip install imagesize
sudo -H python3.6 -m pip install intel-openmp
sudo -H python3.6 -m pip install ipykernel
sudo -H python3.6 -m pip install ipython
sudo -H python3.6 -m pip install ipython_genutils
sudo -H python3.6 -m pip install ipywidgets
sudo -H python3.6 -m pip install isort
sudo -H python3.6 -m pip install isoweek
sudo -H python3.6 -m pip install itsdangerous
sudo -H python3.6 -m pip install jdcal
sudo -H python3.6 -m pip install jedi
sudo -H python3.6 -m pip install jinja2
sudo -H python3.6 -m pip install jsonschema
sudo -H python3.6 -m pip install jupyter
sudo -H python3.6 -m pip install jupyter_client
sudo -H python3.6 -m pip install jupyter_console
sudo -H python3.6 -m pip install jupyter_core
sudo -H python3.6 -m pip install jupyterlab
sudo -H python3.6 -m pip install jupyterlab_launcher
sudo -H python3.6 -m pip install lazy-object-proxy
sudo -H python3.6 -m pip install libtiff
sudo -H python3.6 -m pip install llvmlite
sudo -H python3.6 -m pip install locket
sudo -H python3.6 -m pip install lockfile
sudo -H python3.6 -m pip install lxml
sudo -H python3.6 -m pip install markupsafe
sudo -H python3.6 -m pip install matplotlib
sudo -H python3.6 -m pip install mccabe
sudo -H python3.6 -m pip install mistune
sudo -H python3.6 -m pip install mkl-service
sudo -H python3.6 -m pip install mpmath
sudo -H python3.6 -m pip install msgpack-python
sudo -H python3.6 -m pip install multipledispatch
sudo -H python3.6 -m pip install nbconvert
sudo -H python3.6 -m pip install nbformat
sudo -H python3.6 -m pip install networkx
sudo -H python3.6 -m pip install nltk
sudo -H python3.6 -m pip install nose
sudo -H python3.6 -m pip install notebook
sudo -H python3.6 -m pip install numba
sudo -H python3.6 -m pip install numexpr
sudo -H python3.6 -m pip install numpy
sudo -H python3.6 -m pip install numpydoc
sudo -H python3.6 -m pip install odo
sudo -H python3.6 -m pip install olefile
sudo -H python3.6 -m pip install opencv-python
sudo -H python3.6 -m pip install openpyxl
sudo -H python3.6 -m pip install packaging
sudo -H python3.6 -m pip install pandas
sudo -H python3.6 -m pip install pandas-summary
sudo -H python3.6 -m pip install pandoc
sudo -H python3.6 -m pip install pandocfilters
sudo -H python3.6 -m pip install partd
sudo -H python3.6 -m pip install path.py
sudo -H python3.6 -m pip install pathlib2
sudo -H python3.6 -m pip install patsy
sudo -H python3.6 -m pip install pep8
sudo -H python3.6 -m pip install pickleshare
sudo -H python3.6 -m pip install pillow
sudo -H python3.6 -m pip install pip
sudo -H python3.6 -m pip install pkginfo
sudo -H python3.6 -m pip install ply
sudo -H python3.6 -m pip install progress
sudo -H python3.6 -m pip install prompt_toolkit
sudo -H python3.6 -m pip install psutil
sudo -H python3.6 -m pip install py
sudo -H python3.6 -m pip install pycodestyle
sudo -H python3.6 -m pip install pycosat
sudo -H python3.6 -m pip install pycparser
sudo -H python3.6 -m pip install pycrypto
sudo -H python3.6 -m pip install pyflakes
sudo -H python3.6 -m pip install pygments
sudo -H python3.6 -m pip install pylint
sudo -H python3.6 -m pip install pyodbc
sudo -H python3.6 -m pip install pyopenssl
sudo -H python3.6 -m pip install pyparsing
sudo -H python3.6 -m pip install pysocks
sudo -H python3.6 -m pip install pytest
sudo -H python3.6 -m pip install python-dateutil
sudo -H python3.6 -m pip install pytz
sudo -H python3.6 -m pip install pywavelets
sudo -H python3.6 -m pip install pyyaml
sudo -H python3.6 -m pip install pyzmq
sudo -H python3.6 -m pip install qtawesome
sudo -H python3.6 -m pip install qtconsole
sudo -H python3.6 -m pip install qtpy
sudo -H python3.6 -m pip install requests
sudo -H python3.6 -m pip install rope
sudo -H python3.6 -m pip install ruamel_yaml
sudo -H python3.6 -m pip install scikit-image
sudo -H python3.6 -m pip install scikit-learn
sudo -H python3.6 -m pip install scipy
sudo -H python3.6 -m pip install seaborn
sudo -H python3.6 -m pip install setuptools
sudo -H python3.6 -m pip install simplegeneric
sudo -H python3.6 -m pip install singledispatch
sudo -H python3.6 -m pip install sip
sudo -H python3.6 -m pip install six
sudo -H python3.6 -m pip install snowballstemmer
sudo -H python3.6 -m pip install sortedcollections
sudo -H python3.6 -m pip install sortedcontainers
sudo -H python3.6 -m pip install sphinx
sudo -H python3.6 -m pip install sphinxcontrib-websupport
sudo -H python3.6 -m pip install spyder
sudo -H python3.6 -m pip install sqlalchemy
sudo -H python3.6 -m pip install statsmodels
sudo -H python3.6 -m pip install sympy
sudo -H python3.6 -m pip install tblib
sudo -H python3.6 -m pip install testpath
sudo -H python3.6 -m pip install toolz
sudo -H python3.6 -m pip install tornado
sudo -H python3.6 -m pip install tqdm
sudo -H python3.6 -m pip install traitlets
sudo -H python3.6 -m pip install typing
sudo -H python3.6 -m pip install unicodecsv
sudo -H python3.6 -m pip install urllib3
sudo -H python3.6 -m pip install wcwidth
sudo -H python3.6 -m pip install webencodings
sudo -H python3.6 -m pip install werkzeug
sudo -H python3.6 -m pip install wheel
sudo -H python3.6 -m pip install widgetsnbextension
sudo -H python3.6 -m pip install win_inet_pton
sudo -H python3.6 -m pip install win_unicode_console
sudo -H python3.6 -m pip install wincertstore
sudo -H python3.6 -m pip install wrapt
sudo -H python3.6 -m pip install xlrd
sudo -H python3.6 -m pip install xlsxwriter
sudo -H python3.6 -m pip install xlwt
sudo -H python3.6 -m pip install zict

sudo -H python3.6 -m pip install ipywidgets
jupyter nbextension enable --py widgetsnbextension

## install the pytorch components
sudo -H python3.6 -m pip install http://download.pytorch.org/whl/cu80/torch-0.2.0.post3-cp36-cp36m-manylinux1_x86_64.whl 
sudo -H python3.6 -m pip install torchvision
sudo -H python3.6 -m pip  install torchtext


## install awscli
sudo -H python3.6 -m pip install awscli


## installs ffmpeg for visualisations
sudo -i add-apt-repository -y ppa:mc3man/trusty-media  
sudo -i apt-get -y install ffmpeg  
sudo -i apt-get -y install frei0r-plugins  

## clone the fast.ai repos
cd ~
git clone https://github.com/fastai/fastai.git
##git clone https://github.com/fastai/courses.git

mkdir data
sudo chown 
unzip -q ~/downloads/dogscats.zip -d ~/data

python3.6 -m jupyter notebook -y --generate-config
## used to work on earlier versions echo "c.NotebookApp.password = u'anaconda'" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '*'" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> $HOME/.jupyter/jupyter_notebook_config.py

jupyter notebook password

