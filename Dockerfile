FROM python:3

ENV ECOVACS_COUNTRY=us ECOVACS_CONTINENT=na

RUN apt-get update -y && \
    apt-get install -y git && \
    pip install sucks && \
    pip install flask && \
    mkdir /code
    
WORKDIR /code
    
COPY ecovacs_flask.py /code

EXPOSE 5050
CMD [ "python", "/code/ecovacs-api/ecovacs_flask.py" ]
