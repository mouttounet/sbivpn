#!/bin/sh

echo Associate Elastic IP address
aws ec2 associate-address  --allocation-id ${allocationId}  --instance-id ${instanceId} --private-ip ${privateIp} --profile ${awsprofile}

