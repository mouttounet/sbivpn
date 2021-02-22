#/bin/sh


# Create EC2 instance
aws ec2 run-instances --image-id ${imageid} --count 1  --instance-type t2.micro --associate-public-ip-address --key-name ${myuserkey}   --security-group-ids ${sgid}  --subnet-id ${subnetid} 

# ssh to new instance
ssh -i ${vpn_project_keyfile} ec2-user@${ec2machine}


