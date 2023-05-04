FROM python:3.11.3


COPY init.sh /usr/local/bin/
COPY FlaskApp /root/FlaskApp
RUN chmod u+x /usr/local/bin/init.sh

# RUN apt-get -y update && DEBIAN_FRONTEND=noninteractive \
#     apt-get -y install  openssh-server mlocate vim dos2unix tmux \
#      && echo "root:Docker!" | chpasswd

# # Copy and configure the ssh_setup file
# RUN mkdir -p /tmp
# COPY apps/zero/devops/FlaskRenderDocker/ssh_setup.sh /tmp
# RUN chmod +x /tmp/ssh_setup.sh \
#     && (sleep 1;/tmp/ssh_setup.sh 2>&1 > /dev/null)
# # Open port 2222 for SSH access
# EXPOSE 80 2222

RUN apt-get -y update && DEBIAN_FRONTEND=noninteractive \
    apt-get -y install  mlocate vim dos2unix tmux
ENTRYPOINT [ "init.sh" ]

