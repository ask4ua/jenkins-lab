#!/bin/bash

#$1 - image id
#$2 - key-name
#$3 - region
#$4 - security group
#$5 - subnet id

/usr/bin/aws ec2 run-instances --image-id ${1} --count 1 --instance-type 't2.micro' --key-name ${2} --region ${3} --security-group-id ${4} --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=http11-student18},{Key=Owner,Value=student18},{Key=scope,Value=jenkins}]' 'ResourceType=volume,Tags=[{Key=Name,Value=http11-student18},{Key=Owner,Value=student18}]' --subnet-id ${5} --user-data 'file://deploy-httpd.txt' | grep InstanceId | awk -F\" '{print $4}'
