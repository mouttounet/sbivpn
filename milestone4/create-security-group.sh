#!/bin/sh

echo Creating security group...
echo Use the below sg- security group id, as needed:
aws ec2 create-security-group --group-name ${ec2sg} --description "Security Group for sbivpn project" --vpc-id ${vpcid} --profile ${awsprofile} --output text  


