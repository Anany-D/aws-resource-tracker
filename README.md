# AWS Resource Tracker

A simple Bash script that automates the collection of AWS resource information using AWS CLI.

## Features

* List S3 Buckets
* List EC2 Instances
* List Lambda Functions
* List IAM Users
* Generate timestamped logs
* Supports Cron Job automation

## Tech Stack

* Bash Scripting
* AWS CLI
* jq
* Linux

## Prerequisites

```bash
aws configure
sudo apt install jq -y
```

## Run

```bash
chmod +x aws-resource-tracker.sh
./aws-resource-tracker.sh
```

## Example Use Case

Schedule the script with Cron to generate daily, weekly, or monthly AWS resource reports automatically.

