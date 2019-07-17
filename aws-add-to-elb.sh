#!/bin/bash
/usr/bin/aws elbv2 register-targets --target-group-arn arn:aws:elasticloadbalancing:eu-central-1:168128199012:targetgroup/JenkinsHttpServers/8b3b02c604e05664  --targets Id=${1}
