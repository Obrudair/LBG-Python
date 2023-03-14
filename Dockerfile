FROM python:3.10
MAINTAINER EB 
#install wget for maven
RUN apt-get install -y wget
WORKDIR /LBG-Python
COPY ..
RUN pip install --no-cache-dir -r requirements.txt
#ENV PORT 8080
#EXPOSE ${PORT}
EXPOSE 8080
#COPY . .
CMD [ "python", "./lbg.py" ]
# append from here to the above if needed and del square bracket,"--PORT","8081" ]
