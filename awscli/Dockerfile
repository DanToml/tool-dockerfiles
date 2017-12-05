FROM alpine:latest
MAINTAINER "Danielle Tomlinson <dani@tomlinson.io>"

RUN apk --no-cache add \
	ca-certificates \
	groff \
	less \
	python \
	py2-pip \
	&& pip install awscli

RUN  mkdir -p /root/.aws \
	&& { \
		echo '[default]'; \
		echo 'output = table'; \
		echo 'region = $AWS_DEFAULT_REGION'; \
		echo 'aws_access_key_id = $AMAZON_ACCESS_KEY_ID'; \
		echo 'aws_secret_access_key = $AMAZON_SECRET_ACCESS_KEY'; \
	} > /root/.aws/config

ENTRYPOINT [ "aws" ]
