FROM centos:latest
RUN yum -y update && yum -y install https://downloads.mongodb.com/on-prem-mms/rpm/mongodb-mms-4.0.3.50208.20181003T0848Z-1.x86_64.rpm openssl && yum clean all
RUN groupadd mongodb && useradd -d /home/mongodb -ms /bin/bash -g mongodb -G mongodb -p mongodb mongodb
COPY default-conf-mms.properties /opt/mongodb/mms/conf/conf-mms.properties
COPY docker-entrypoint.sh /entrypoint.sh
VOLUME /etc/mongodb-mms /opt/mongodb/mms/conf /opt/mongodb/mms/logs
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mongodb-mms"]
