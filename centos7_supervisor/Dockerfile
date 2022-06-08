FROM --platform=linux/amd64 centos:7.9.2009

COPY ./conf/supervisord.conf /etc/
COPY ./conf/bootstrap.sh /

RUN yum -y install epel-release \
    && sed -i 's/#baseurl/baseurl/g' /etc/yum.repos.d/epel.repo \
    && sed -i 's/metalink/#metalink/g' /etc/yum.repos.d/epel.repo \
    && yum install -y python-pip \
    && yum clean all \
    && pip install supervisor==3.4.0 \
    && mkdir /var/log/supervisor 

ENTRYPOINT ["/bootstrap.sh"]
