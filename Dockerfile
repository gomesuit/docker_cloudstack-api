FROM centos:7

RUN yum -y update \
    curl -kL https://bootstrap.pypa.io/get-pip.py | python \
    yum -y install libxml2 libxml2-devel libxslt libxslt-devel gcc python-devel \
    pip install git+https://github.com/idcf/cloudstack-api \
    yum clean all

ONBUILD RUN echo "[account]" > ~/.idcfrc \
            echo "host=${IDCF_END_POINT}" >> ~/.idcfrc \
            echo "api_key=${API_KEY}" >> ~/.idcfrc \
            echo "secret_key=${SECRET_KEY}" >> ~/.idcfrc

ENTRYPOINT ["cloudstack-api"]

