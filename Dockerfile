FROM centos:centos7.5.1804

WORKDIR /opt/cobol
COPY . .

RUN yum -y install libgmp3-dev libtool libdb-dev ncurses-dev libncurses-dev 
 RUN yum -y install gmp gmp-devel libtool ncurses ncurses-devel ncurses-libs make 
RUN yum -y install libdbi libdbi-devel libtool-ltdl libtool-ltdl-devel db4 db4-devel 

 RUN yum -y install wget

RUN yum -y install wget 

 RUN ldconfig 
 RUN cobc -V 
 RUN export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH 

EXPOSE 8080
CMD ./intro1
