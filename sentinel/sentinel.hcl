#This file was not used in HCP, only the policies

#Enforce the EC2 instance size to be t3.micro/medium/small
policy "enforce_ec2_size" {
  source = "./policies/enforce_ec2_size.sentinel"
  enforcement_level = "hard-mandatory"
}

#Enforce the region to be us-east-1/2
policy "enforce_region" {
  source = "./policies/enforce_region.sentinel"
  enforcement_level = "hard-mandatory"
}

#Enforce the terraform version to be later than 1.17.0
policy "enforce_terraform_version" {
  source = "./policies/enforce_terraform_version.sentinel"
  enforcement_level = "hard-mandatory"
}

#Enforce a name tag
policy "enforce-aws-name-tag" {
  source = "./policies/enforce-aws-name-tag.sentinel"
  enforcement_level = "hard-mandatory"
}

#Restrict the aws AMI owner
policy "restrict_ami_owner" {
  source = "../policies/restrict_ami_owner.sentinel"
  enforcement_level = "hard-mandatory"
}