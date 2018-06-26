#!/bin/bash

set -eux

echo "region = $REGION" >> /root/.aws/config
echo "aws_access_key_id = $AWS_ACCESS_KEY_ID" >> /root/.aws/credentials
echo "aws_secret_access_key = $AWS_SECRET_ACCESS_KEY" >> /root/.aws/credentials

echo "run instance"
aws ec2 start-instances --instance-ids $INSTANCE
echo "wait run"
time aws ec2 wait instance-running --instance-ids $INSTANCE
echo "instance run"
echo
echo "wait status ok"
time aws ec2 wait instance-status-ok --instance-ids $INSTANCE
echo "instance status ok"

IP=`aws ec2 describe-instances --instance-ids $INSTANCE | grep -w PublicIpAddress | awk '{print $2}' | tr -d \, | tr -d \"`

echo "Configuring ssh access to "$IP
eval $(ssh-agent -s)
echo $SSH_PRIVATE_KEY | base64 -d -i | ssh-add - > /dev/null
ssh-keyscan $IP >> ~/.ssh/known_hosts

echo
echo "run build"

ssh $USERNAME@$IP "curl $URL_BASH | bash"
ssh $USERNAME@$IP sudo shutdown -P now &
sleep 1

echo "wait stop"
time aws ec2 wait instance-stopped --instance-ids $INSTANCE
echo "instance stop"
