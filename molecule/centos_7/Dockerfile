FROM pycontribs/centos:7

#RUN set -xe \
#  && groupadd -r ${ANSIBLE_USER} \
#  && groupadd -r ${DEPLOY_GROUP} \
#  && useradd -m -g ${ANSIBLE_USER} ${ANSIBLE_USER} \
#  && usermod -aG ${DEPLOY_GROUP} ${ANSIBLE_USER} \
#  && echo "%${DEPLOY_GROUP} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible

# Create ubuntu user with sudo privileges
#RUN usermod -aG sudo ansible

# New added for disable sudo password
#RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN echo '%ansible ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN echo '%deployer ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN echo '%somov ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers