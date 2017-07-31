####################################################
#RNA-seq Tools
#Dockerfile to use TopHat 2.1.1 with bowtie2-2.3.2
#Ubuntu 14.04
####################################################
#Build the image based on Ubuntu
FROM ubuntu:14.04

#Mantainer and author
MANTAINER Magdalena Arnal <marnal@imim.es>

#Install/update wget, unzip, python in ubuntu
RUN apt-get update && apt-get install --yes wget unzip python

#Download TopHat2 and Bowtie2
RUN wget http://ccb.jhu.edu/software/tophat/downloads/tophat-2.1.1.Linux_x86_64.tar.gz
RUN wget --default-page=bowtie2-2.3.2-linux-x86_64.zip http://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.3.2/bowtie2-2.3.2-linux-x86_64.zip/

#Unzip TopHat and Bowtie2
RUN tar zxvf tophat-2.1.1.Linux_x86_64.tar.gz
RUN unzip bowtie2-2.3.2-linux-x86_64.zip

#Remove compressed files
RUN rm tophat-2.1.1.Linux_x86_64.tar.gz
RUN rm bowtie2-2.3.2-linux-x86_64.zip

#Add the call of TopHat and bowtie2 into the path variable