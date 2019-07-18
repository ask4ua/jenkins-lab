#!/bin/bash
/usr/bin/aws elbv2 register-targets --targets Id=${1} --region ${2}  --target-group-arn ${3}
