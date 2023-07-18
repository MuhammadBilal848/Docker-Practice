# FROM base_image
# If this is the first layer(lowest layer of container) then it has to be "linux image" 
FROM python:3.8-alpine 
# the Dockerfile will pull this 3.8-alpine from dockerhub repository, one can also use 3.7-alpine
COPY . /app
# this command will create a copy of every file available in the directory we are working on
WORKDIR /app
# this command sets the directory we are going to work on

# ENV FLASK_APP=app.py
# ENV FLASK_RUN_HOST=0.0.0.0
# we can also use evironment variables if we dont want to to explicitly code it.

RUN pip install -r requirements.txt
# this command will install all the dependencies we need for the app to run

# CMD ["flask","run"]
# this will be used when we set up env variables

CMD python app.py
# this command will run the files we want to run after installing all the dependencies