FROM python:3.10
MAINTAINER EB 
#install wget for maven
RUN apt-get install -y wget
WORKDIR /LBG-Python
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
ENV PORT 8081
EXPOSE ${PORT}
COPY . .
CMD [ "python", "./lbg.py" ]
