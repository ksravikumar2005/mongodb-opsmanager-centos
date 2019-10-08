FROM centos:latest
RUN yum -y update &&  yum -y install yum -y install cyrus-sasl cyrus-sasl-gssapi cyrus-sasl-plain krb5-libs libcurl libpcap lm_sensors-libs net-snmp net-snmp-agent-libs openldap openssl rpm-libs tcp_wrappers-libs && rpm -ivh  https://downloads.mongodb.com/on-prem-mms/rpm/mongodb-mms-4.2.2.56673.20191001T1500Z-1.x86_64.rpm  && yum clean all
RUN groupadd mongodb && useradd -d /home/mongodb -ms /bin/bash -g mongodb -G mongodb -p mongodb mongodb
COPY default-conf-mms.properties /opt/mongodb/mms/conf/conf-mms.properties
COPY docker-entrypoint.sh /entrypoint.sh
VOLUME /etc/mongodb-mms /opt/mongodb/mms/conf /opt/mongodb/mms/logs
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mongodb-mms"]
