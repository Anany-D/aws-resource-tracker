#!/bin/bash

# Author: Anany Dubey
# Date: 25 May 2026
# Version: v1.1
# Purpose: Display AWS resources available in the account

echo "Script started at: $(date)" &>> aws-resource-tracker.log
echo

echo "===== S3 Buckets ====="
aws s3 ls &>> aws-resource-tracker.log

echo
echo "===== EC2 Instances ====="

aws ec2 describe-instances | jq '.Reservations[].Instances[]' &>> aws-resource-tracker.log

echo
echo "===== Lambda Functions ====="

aws lambda list-functions | jq '.Functions[].FunctionName' &>> aws-resource-tracker.log

echo
echo "===== IAM Users ====="

aws iam list-users | jq '.Users[].UserName' &>> aws-resource-tracker.log

echo
echo "Script completed at: $(date)" &>> aws-resource-tracker.log
