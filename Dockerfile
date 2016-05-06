FROM centos:7

RUN yum -y update && \
    yum -y install git && \
    curl -kL https://bootstrap.pypa.io/get-pip.py | python && \
    yum -y install libxml2 libxml2-devel libxslt libxslt-devel gcc python-devel && \
    pip install git+https://github.com/idcf/cloudstack-api && \
    yum clean all

ENTRYPOINT ["docker-entrypoint.sh"]

