#!/bin/sh

if [ -z $1 ]; then
  echo One parameter 'security-group-id' is required.
  exit
fi

# Script parameter
export ec2sgid=$1

aws ec2 authorize-security-group-ingress --group-id ${ec2sgid} --protocol tcp --port 22 --cidr 0.0.0.0/0   --profile ${awsprofile}
aws ec2 authorize-security-group-ingress --group-id ${ec2sgid} --protocol udp --port 41820 --cidr 0.0.0.0/0   --profile ${awsprofile}
aws ec2 describe-security-groups --group-ids ${ec2sgid}   --profile ${awsprofile}




