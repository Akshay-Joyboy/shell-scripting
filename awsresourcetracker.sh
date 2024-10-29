#!/bin/bash

#Author : Akshay
#Date: 29-10-2024
#version: v1
#Purpose: this script will report the aws resource usage
########################################################
#aws s3
#aws ec2
#aws lambda
#aws iam users
################################
LOGFILE="/home/ubuntu/awsusage.log"

# start logging
{
#list s3 buckets 
set -x #debug
echo "print s3 bukets"
aws s3 ls

echo

#list ec2 instances
echo "print all the ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
echo 

#list aws lambda functions
echo "list all the lambda functions"
aws lambda list-functions

echo

#list iam user
echo "list all the iamusers"
aws iam list-users
} &>> "$LOGFILE" #redirect both stdout and stderr to logfile
