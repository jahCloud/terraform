# terraform IaC

> Basic VPC with instance (linux AMI)

* VPC
* Subnet
* Internet gateway (IGW)
* Route Table
* Route table association
* Security group
* Key pair
* EC2 Instance

> Commands
* ``terraform init``
* ``terraform plan``
* ``terraform apply``
* ``terraform destroy``


> Variables are read from variables.tf 
If not specified in that file, from following places:

1. Command line flags
2. terraform.tfvars
3. Environment variables
4. UI input
 
