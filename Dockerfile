# Dockerfile, Image, Container

#Pulls the python image from dockerhub. not python can run on container
FROM python:3.8 

#add main.py into the container
#ADD source destination
ADD main.py .

#RUN command will run a commandline string upon start
#Example
#RUN pip install requests beautifulsoup4

#Specify the entry command
#This will run the main.py file
CMD [ "python", "./main.py" ]

# now that this file is done, make the image on the command line:
# docker build -t <name of image> <location for image: usually .>

#To start the container, run the following in the cmd line
#docker run <name of image>