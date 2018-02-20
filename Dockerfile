FROM fedora:latest
RUN yum install -y java
RUN yum install -y wget
RUN yum install -y initscripts
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
RUN rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
RUN yum install -y jenkins
RUN service jenkins start
RUN chkconfig jenkins on
EXPOSE 8080