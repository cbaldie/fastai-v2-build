# fastai-v2-build
## build - ubuntu 16.04, python 3.6.3, most of the anaconda libraries, pytorch, setup to run the fast.ai course
### check out http://www.fast.ai/ course for machine learning tuition


### run this in your linux machine
1. wget "https://raw.githubusercontent.com/cbaldie/fastai-v2-build/master/build-ubuntu16-04-python3-6-3-pytorch.sh" -O "build-ubuntu16-04-python3-6-3-pytorch.sh"
2. bash build-ubuntu16-04-python3-6-3-pytorch.sh
3. enter your password into the command line
4. jupyter-notebook
5. go to your web browser - ec2-34-208-92-193.us-west-2.compute.amazonaws.com:8888
6. enter your password and you are good to go
7. some of the paths in the jupyter notebook will be best to add /home/ubuntu/data/



### background
this is setup for running on a p2.xlarge on AWS with NVIDIA GPU
python libraries are compiled from source and all required dependancies are included
by adding most of the Anaconda libraries this runs ML batches fairly reliably