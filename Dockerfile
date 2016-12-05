FROM ubuntu:16.04

#update
RUN apt-get update


# Install mosquitto and mosquitto-clients
RUN apt-get install -y mosquitto
RUN apt-get install -y mosquitto-clients

#Setting docker port
EXPOSE 1883

#tools
RUN apt-get install -y sudo git

# adv account
RUN useradd -m -k /home/adv adv -p adv -s /bin/bash -G sudo

# set up adv as sudo
RUN echo "adv ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
WORKDIR /home/adv

# install HDD failure prediction service
RUN git clone https://github.com/ADVANTECH-Corp/hdd_failure_predict_service.git /home/adv/hdd_failure_predict
RUN sudo chmod a+w hdd_failure_predict/Feature.data
RUN sudo cp hdd_failure_predict/run_service.sh /usr/local/bin/.

USER adv

RUN mkdir /home/adv/myvol
RUN echo "hello world" > /home/adv/myvol/greeting
VOLUME /home/adv/myvol
#Run mosquitto
#ENTRYPOINT ["/usr/sbin/mosquitto"]
