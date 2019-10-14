FROM centos:centos7.6.1810
RUN yum -y update &&  yum -y install cyrus-sasl cyrus-sasl-gssapi cyrus-sasl-plain krb5-libs libcurl libpcap lm_sensors-libs net-snmp net-snmp-agent-libs openldap openssl rpm-libs tcp_wrappers-libs https://downloads.mongodb.com/on-prem-mms/rpm/mongodb-mms-4.2.2.56673.20191001T1500Z-1.x86_64.rpm  && yum clean all
RUN groupadd mongodb-mms && useradd -d /home/mongodb-mms -ms /bin/bash -g mongodb-mms -G mongodb-mms -p mongodb-mms mongodb-mms
COPY default-conf-mms.properties /opt/mongodb/mms/conf/conf-mms.properties
COPY docker-entrypoint.sh /entrypoint.sh
VOLUME /etc/mongodb-mms /opt/mongodb/mms/conf /opt/mongodb/mms/logs
RUN chown -R mongodb-mms:mongodb-mms /opt/mongodb /etc/mongodb-mms
ENTRYPOINT ["/entrypoint.sh"]
USER mongodb-mms-agent
CMD ["mongodb-mms"]
