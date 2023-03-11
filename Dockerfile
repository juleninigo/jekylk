FROM jenkins/inbound-agent:latest

USER root

RUN apt-get update && \
    apt-get install -y ruby-dev gcc g++ make && \
    apt-get clean && \
    rm -Rf /var/lib/apt/lists && \
    gem install jekyll bundler minima
    
USER jenkins