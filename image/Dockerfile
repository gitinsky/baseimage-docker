FROM ubuntu:16.04
MAINTAINER Git In Sky <support@gitinsky.com>

ENV HOME /root
ENV TERM xterm
ADD . /build

RUN /build/prepare.sh && \
	/build/system_services.sh && \
	/build/utilities.sh && \
        /build/gitinsky.sh && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
