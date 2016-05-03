FROM elsdoerfer/gitolite

MAINTAINER jim.mei@centling.com

RUN locale-gen en_US.UTF-8 zh_CN.UTF-8

# Change init.sh to change .gitolite.rc UMASK to 0022
ADD ./init.sh /init
RUN chmod +x /init

