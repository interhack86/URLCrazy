FROM ruby:rc-alpine
MAINTAINER interhack

WORKDIR /opt/

RUN wget https://github.com/interhack86/URLCrazy/archive/master.zip && unzip master.zip
RUN rm master.zip && mv URLCrazy-master URLCrazy

ENTRYPOINT ["URLCrazy/urlcrazy"]