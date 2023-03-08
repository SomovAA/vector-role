FROM debian:stretch

ENV ANSIBLE_USER=ansible DEPLOY_GROUP=deployer SUDO_GROUP=sudo

RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-transport-https gnupg2 python3-minimal python3-apt man systemd systemd-sysv rsyslog sudo bash ca-certificates iproute2 && apt-get clean;

# https://molecule.readthedocs.io/en/latest/examples/#docker-with-non-privileged-user
RUN set -xe \
  && groupadd -r ${ANSIBLE_USER} \
  && groupadd -r ${DEPLOY_GROUP} \
  && useradd -m -g ${ANSIBLE_USER} ${ANSIBLE_USER} \
  && usermod -aG ${SUDO_GROUP} ${ANSIBLE_USER} \
  && usermod -aG ${DEPLOY_GROUP} ${ANSIBLE_USER} \
  && sed -i "/^%${SUDO_GROUP}/s/ALL\$/NOPASSWD:ALL/g" /etc/sudoers