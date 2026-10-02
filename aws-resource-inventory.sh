#!/usr/bin/bash

#This Script will list all the resources in AWS Account for a Particular Service.
#Author: Abdur Rahman/AWS Cloud Engineer
#v.0.0.1

#List of Services Supported:
#1. EC2
#2. S3
#3. EFS
#4. RDS
#5. Lambda
#6. CloudFront
#7. Cloudformation
#8. Cloud Watch
#9. VPC
#10. IAM
#11. ELB
#12. Route53
#13. SNS
#14. EBS
#15. SQS

#          $0 <Service Name> <Region Name>
# Example: $0 EC2 us-east-1


#First: We will check weather user has provided correct CLI arguments or not. If not, we will exit the script with proper message.
if [  $# -ne 2 ] 
then
    echo "Please provide the Service Name and Region Name as arguments."
    echo "Usage: $0 <Service Name> <Region Name>"
    exit 1
fi


#This command will check is AWS CLI is Installed or not.
if ! command -v aws &> /dev/null
then
    echo "AWS CLI is not installed. Please install it first."
    exit 1
fi


#Now let's check if the AWS CLI is Configured or not.
if [ ! -d ~/.aws ]
then
    echo "AWS CLI is not configured. Please configure it first"
    exit 1
fi

#Now we will create a switch case to check the service name provided by user and then we will run the appropriate command to list the resources for that service.
case $1 in
    EC2)
        aws ec2 describe-instances --region $2
        ;;
    S3)
        aws s3 ls --region $2
        ;;
    EFS)
        aws efs describe-file-systems --region $2
        ;;
    RDS)
        aws rds describe-db-instances --region $2
        ;;
    Lambda)
        aws lambda list-functions --region $2
        ;;
    CloudFront)
        aws cloudfront list-distributions --region $2
        ;;
    Cloudformation)
        aws cloudformation describe-stacks --region $2
        ;;
    CloudWatch)
        aws cloudwatch describe-alarms --region $2
        ;;
    VPC)
        aws ec2 describe-vpcs --region $2
        ;;
    IAM)
        aws iam list-users --region $2
        ;;
    ELB)
        aws elb describe-load-balancers --region $2
        ;;
    Route53)
        aws route53 list-hosted-zones --region $2
        ;;
    SNS)
        aws sns list-topics --region $2
        ;;
    EBS)
        aws ec2 describe-volumes --region $2
        ;;
    SQS)
        aws sqs list-queues --region $2
        ;;
    *)
        echo "Invalid Service Name. Please provide a valid service name."
        exit 1
        ;;
    esac