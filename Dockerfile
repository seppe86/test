FROM /ubuntu:latest
# WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN sudo apt-get wget 
RUN sudo apt-get install unzip
RUN wget https://s3.amazonaws.com/publicsctdownload/Ubuntu/aws-schema-conversion-tool-1.0.latest.zip
RUN unzip aws-schema-conversion-tool-1.0.latest.zip
RUN sudo dpkg -i aws-schema-conversion-tool-1.0.*.deb
