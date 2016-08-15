# DONOT TOUCH THE FIRST FEW LINES OF THE DOCKER FILE. LOOK FOR THE #edit TAG

###############DO NOT EDIT BEGIN #######################################################################
FROM ubuntu:14.04
RUN apt-get update
RUN apt-get upgrade

# install numpy dependencies
RUN apt-get install -yqq libpng-dev 
RUN apt-get install -yqq freetype*
RUN apt-get install -yqq libblas-dev 
RUN apt-get install -yqq liblapack-dev
RUN apt-get install -yqq libatlas-base-dev
RUN apt-get install -yqq gfortran

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python3 python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*
  

# Install Python Setuptools

RUN apt-get -yqq install python-pip
RUN apt-get install -y python-setuptools



# Install pip
RUN easy_install pip
RUN pip install --upgrade pip

###############DO NOT EDIT END #######################################################################3

# create directories 

#edit: HERE RENAME THE boilerPlatePythonWebService TO THE NAME OF YOUR FOLDER
RUN mkdir -p /boilerPlatePythonWebService/src
#edit: HERE RENAME THE boilerPlatePythonWebService TO THE NAME OF YOUR FOLDER
WORKDIR /boilerPlatePythonWebService 



# Add and install Python modules
#edit: HERE RENAME THE boilerPlatePythonWebService TO THE NAME OF YOUR FOLDER
ADD /src boilerPlatePythonWebService/src

#edit: HERE RENAME THE boilerPlatePythonWebService TO THE NAME OF YOUR FOLDER
RUN cd boilerPlatePythonWebService/src; pip install -r requirements.txt


# Expose
EXPOSE  5000

# Run
#edit: HERE RENAME THE boilerPlatePythonWebService TO THE NAME OF YOUR FOLDER and webservice.py TO THE NAME OF YOUR MAIN PY CLASS
CMD ["python", "boilerPlatePythonWebService/src/webservice.py"]