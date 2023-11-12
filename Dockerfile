# this is an official Python runtime, used as the parent image
FROM python:3.10-slim

# set the working directory in the container to /app
WORKDIR /app
# RUN apt clean && apt update -y && apt -yy install curl gcc && apt clean
# Install Requirements
COPY mariadb_repo_setup /app/mariadb_repo_setup
COPY requirements.txt /app/requirements.txt

#RUN bash mariadb_repo_setup && apt clean && apt update -y && apt -yy install python3.9-dev libmariadb3 libmariadb-dev gcc && apt clean

RUN apt clean &&  \
    apt update -y &&  \
    apt -yy install curl gcc  &&  \
    bash mariadb_repo_setup &&  \
    apt -yy install libmariadb3 libmariadb-dev gcc python3-dev build-essential &&  \
    pip install -r requirements.txt &&  \
    apt remove -yy gcc &&  \
    apt autoremove -yy &&  \
    apt clean


#RUN apt clean
#RUN apt update -y
#RUN apt -yy install curl gcc
#RUN bash mariadb_repo_setup
#RUN apt -yy install libmariadb3 libmariadb-dev gcc python3-dev build-essential
#RUN pip install -r requirements.txt
#RUN apt remove -yy gcc
#RUN apt autoremove -yy
#RUN apt clean
