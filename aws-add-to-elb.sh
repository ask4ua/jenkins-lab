#!/bin/bash
/usr/bin/aws elbv2 register-targets --region ${3}  --target-group-arn ${2}  --targets Id=${1}
