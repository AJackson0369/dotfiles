#!/usr/bin/env fish

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

rm awscliv2.zip

rm -rf aws

#curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"

#sudo dpkg -i session-manager-plugin.deb

#rm session-manager-plugin.deb


yay -S --noconfirm --needed aws-session-manager-plugin
