# AWS Resource Inventory Tool

A Bash-based AWS resource inventory tool that uses the **AWS CLI** to retrieve resources from different AWS services based on a specified service and AWS Region.

This project was built as a hands-on exercise in **Bash scripting, AWS CLI automation, Linux, and AWS infrastructure management**.

## 🚀 Features

* Accepts an AWS service and Region as command-line arguments
* Validates the number of arguments provided
* Checks whether the AWS CLI is installed
* Validates AWS credentials using AWS STS
* Uses Bash `case` statements to select the appropriate AWS CLI command
* Supports multiple AWS services
* Handles AWS services that are regional and global
* Disables the AWS CLI interactive pager for easier terminal output
* Provides error messages for invalid service names or configuration issues

## ☁️ Supported AWS Services

The current version supports:

| Service        | AWS CLI Operation         |
| -------------- | ------------------------- |
| EC2            | `describe-instances`      |
| S3             | `s3 ls`                   |
| EFS            | `describe-file-systems`   |
| RDS            | `describe-db-instances`   |
| Lambda         | `list-functions`          |
| CloudFront     | `list-distributions`      |
| CloudFormation | `describe-stacks`         |
| CloudWatch     | `describe-alarms`         |
| VPC            | `describe-vpcs`           |
| IAM            | `list-users`              |
| ELB            | `describe-load-balancers` |
| Route 53       | `list-hosted-zones`       |
| SNS            | `list-topics`             |
| EBS            | `describe-volumes`        |
| SQS            | `list-queues`             |

## 🛠️ Technologies Used

* **Bash**
* **AWS CLI**
* **Linux / WSL**
* **AWS STS**
* **AWS IAM**
* **Git**
* **GitHub**

## 📋 Prerequisites

Before running the script, make sure you have:

1. Linux, WSL, or another Unix-like environment
2. AWS CLI installed
3. An AWS account
4. AWS credentials configured
5. IAM permissions to perform the required AWS API operations

Check whether AWS CLI is installed:

```bash
aws --version
```

Check whether your AWS credentials are working:

```bash
aws sts get-caller-identity
```

## 📥 Installation

Clone the repository:

```bash
git clone https://github.com/Abdurrahman-Ehsan/aws-resource-inventory-bash.git
```

Move into the project directory:

```bash
cd aws-resource-inventory-bash
```

Make the script executable:

```bash
chmod +x aws-resource-inventory.sh
```

## ▶️ Usage

The script accepts two arguments:

```bash
./aws-resource-inventory.sh <Service> <Region>
```

### Example: EC2

```bash
./aws-resource-inventory.sh EC2 us-east-1
```

### Example: Lambda

```bash
./aws-resource-inventory.sh Lambda us-east-1
```

### Example: RDS

```bash
./aws-resource-inventory.sh RDS us-east-1
```

### Example: VPC

```bash
./aws-resource-inventory.sh VPC us-east-1
```

The script then executes the corresponding AWS CLI command and displays the returned AWS resource information.

## 🔐 AWS Credentials

The script does **not** store AWS credentials.

Configure your AWS credentials using the AWS CLI:

```bash
aws configure
```

You can then verify your identity:

```bash
aws sts get-caller-identity
```

For security reasons, **never commit AWS access keys, secret keys, private keys, `.pem` files, or other credentials to GitHub.**

This project includes a `.gitignore` file to prevent sensitive files from being accidentally committed.

## 📂 Project Structure

```text
aws-resource-inventory-bash/
│
├── aws-resource-inventory.sh
├── .gitignore
└── README.md
```

## 🧠 What I Practiced

Through this project, I practiced:

* Bash scripting
* Shell variables
* Command-line arguments
* Conditional statements
* `case` statements
* Exit codes
* Command validation
* Input validation
* AWS CLI commands
* AWS STS credential validation
* AWS regional vs. global services
* AWS resource discovery
* Git and GitHub
* Basic automation concepts

## 🔮 Future Improvements

Possible improvements for future versions include:

* Add more AWS services
* Add support for different output formats such as JSON, text, and tables
* Add colored terminal output
* Add logging
* Add more detailed error handling
* Add automatic service discovery
* Add filtering options
* Add resource counts
* Improve command-line argument handling with options such as `--service` and `--region`

## 👨‍💻 Author

**Abdur Rahman**

Aspiring AWS Cloud Engineer focused on AWS, Linux, networking, automation, and cloud infrastructure.

---

⭐ This project is part of my hands-on learning journey toward AWS Cloud Engineering.
