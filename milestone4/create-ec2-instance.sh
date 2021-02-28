#!/bin/sh

if [ -z $1 ]; then
  echo One parameter 'security-group-id' is required.
  exit
fi


# Script parameter
export ec2sgid=$1

echo Create EC2 instance 
aws ec2 run-instances --image-id ${ec2ami}  --key-name ${myuserkey} --subnet-id ${subnetid} --security-group-ids ${ec2sgid} --instance-type t2.micro --placement AvailabilityZone=${az} --user-data file:///install_vpn_server.sh --block-device-mappings DeviceName=/dev/sdh,Ebs={VolumeSize=8}  --associate-public-ip-address  --profile ${awsprofile}



