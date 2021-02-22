#/bin/sh

# Create S3 bucket
aws s3api create-bucket --bucket vpn1files --create-bucket-configuration LocationConstraint=us-west-2

# Copy a sample file
aws s3 cp /data/samples/vpn-sample-file-1.txt s3://vpn1files


