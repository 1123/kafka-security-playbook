FROM osixia/openldap:1.3.0
ENV container docker
ADD custom /container/service/slapd/assets/config/bootstrap/ldif/custom
RUN apt-get update 
RUN apt-get install -y vim netcat 
EXPOSE 389/TCP

