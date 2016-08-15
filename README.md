This is a boiler plate project for exposing python functionality as webservices and containerizing them with docker
====

## Installing Docker 
1. Go to https://www.docker.com/products/docker-toolbox
2. Choose the appropriate OS and download docker tool box
3. Install docker tool box

## Making sure the installation is right and setting up the OS
1. Go to Start->All Programs->Oracle VM VirtualBox
2. If there is a virtual machine called default, right click and close it, then delete it by selecting remove (This is because the default VM that the installer creates doesn't use the right operating system)
3. Go to Start->All Programs->Docker and select Docker Quickstart Terminal
4. This would open a terminal and create a docker machine. This might take some time.
5. Once done, this would be seen. The IP address of the newly created docker machine would be displayed, make a note of it

	                        ##         .
	                  ## ## ##        ==
	               ## ## ## ## ##    ===
	           /"""""""""""""""""\___/ ===
	      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~~ ~ /  ===- ~~~
	           \______ o           __/
	             \    \         __/
	              \____\_______/
	
		docker is configured to use the default machine with IP 192.168.99.100
		For help getting started, check out the docs at https://docs.docker.com
	
	Start interactive shell

6. Now go back to the Oracle VM VirtualBox and select the new default vm, right click and open the settings window. The Type and version of the box must be linux. Set Type to Linux and Version to Linux 2.6 /3.x/4.x (64 Bit)
 

## Running the boiler plate code

1. Go to the quick start terminal
2. Go to the path where this project is downloaded/cloned (using usual cd commands)
3. When inside the boilerPlatePythonWebService folder where the Dockerfile is located, type 

		docker build .

	
4. This would build a local image. Once completed, to check if the image has been created, type
	
		docker images

5. This must list the images on your local machine

	$ docker images
	
	REPOSITORY          TAG                 IMAGE ID            CREATED     		SIZE
	
	<none>              <none>              963f6de58dd5        9 seconds ago		541.3 MB
	
	<none>              <none>              c78f57260a05        2 minutes ago		537 MB
	
	<none>              <none>              f38ba9e4e61f        33 minutes ago		698.4 MB
	
6. Now to run it, type

		docker run -p 5000:5000 image_id
 
for instance to run the first image listed above, the run command would be like	
		docker run -p 5000:5000 963f6de58dd5
 (add -d tag to make it run as a background thread)	
	

7. Once started, open your browser and go to http://<docker-ip address>:5000. Mostly the docker ip address would be 192.168.99.100. So open http://192.168.99.100:5000
8. If it displays a welcome message, you are done!!

	
## Editing the boiler plate code

1. Add all dependency installs to the requirements.txt file
2. Edit the Docker file and look for #edit tags and follow instructions
3. For instructions on webservices go to http://flask.pocoo.org/ as the boilerplate uses flask framework
	
