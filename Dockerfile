FROM ubuntu:16.04

#update
RUN apt-get update


# Install mosquitto and mosquitto-clients
RUN apt-get install -y mosquitto
RUN apt-get install -y mosquitto-clients

#Setting docker port
EXPOSE 1883

RUN echo `date` > 456.txt
#Run mosquitto
#ENTRYPOINT ["/usr/sbin/mosquitto"]
