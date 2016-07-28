FROM python:2.7
ENV PYTHONUNBUFFERED 1

# Add Anaconda server packages for development
WORKDIR /opt
RUN git clone https://github.com/DamnWidget/anaconda.git -b docker

# Working directory where the source is copied
RUN mkdir /code
WORKDIR /code/
ADD requirements.txt /code/

# Install python dependencies
RUN pip install -r requirements.txt

# Mount current folder on the server
ADD . /code/

# Create unpriveleged user
RUN adduser --disabled-password --gecos '' vader