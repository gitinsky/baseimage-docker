FROM ubuntu:14.04
MAINTAINER Git In Sky <support@gitinsky.com>

ENV HOME /root
ADD . /build

RUN /build/prepare.sh && \
	/build/system_services.sh && \
	/build/utilities.sh && \
        /build/gitinsky.sh && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
