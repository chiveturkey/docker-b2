FROM centos:7

# Update and install some useful packages.
RUN yum install epel-release -y \
  && yum update -y \
  && yum install -y python36-pip

# Install b2.
RUN pip3 install --upgrade b2
