FROM centos:centos7.6.1810
RUN yum -y update &&  yum -y install net-tools openssl https://downloads.mongodb.com/on-prem-mms/rpm/mongodb-mms-4.2.2.56673.20191001T1500Z-1.x86_64.rpm  && yum clean all
COPY default-conf-mms.properties /opt/mongodb/mms/conf/conf-mms.properties
COPY docker-entrypoint.sh /entrypoint.sh
RUN openssl rand 24 > /etc/mongodb-mms/gen.key
VOLUME /etc/mongodb-mms /opt/mongodb/mms/conf /opt/mongodb/mms/logs
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mongodb-mms"]
