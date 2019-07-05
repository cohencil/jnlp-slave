FROM jenkins/jnlp-slave:3.29-1

ENV TERRAFORM_VERSION=0.12.3

USER root

RUN curl -LO https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
&& unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
&& mv terraform /usr/local/bin/terraform