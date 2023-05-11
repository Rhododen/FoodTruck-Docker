#build this image from 
FROM ubuntu:18.04

#download the needed dependencies 
RUN apt-get -yqq update
RUN apt-get -yqq install python3-pip python3-dev curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -yq nodejs

#copy the application files to the docker container
ADD flask-app /opt/flask-app

#change into the working directory
WORKDIR /opt/flask-app

# fetch app specific deps
RUN npm install
RUN npm run build
RUN pip3 install -r requirements.txt

# expose port
EXPOSE 5000

#start the application(last command in the docker file) 
CMD [ "python3", "./app.py" ]
