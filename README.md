# fastai-v2-build
## build - ubuntu 16.04, python 3.6.3, most of the anaconda libraries, pytorch, setup to run the fast.ai course
### check out http://www.fast.ai/ course for machine learning tuition


### run this in your linux machine
wget "https://raw.githubusercontent.com/cbaldie/fastai-v2-build/master/build-ubuntu16-04-python3-6-3-pytorch.sh" -O "build-ubuntu16-04-python3-6-3-pytorch.sh"
bash build-ubuntu16-04-python3-6-3-pytorch.sh



### background
this is setup for running on a p2.xlarge on AWS with NVIDIA GPU
python libraries are compiled from source and all required dependancies are included
by adding most of the Anaconda libraries this runs ML batches fairly reliably