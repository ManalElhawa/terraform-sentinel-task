### Design

- For the terraform setup, I have created an ec2 instance and VPC. This was used as the sample infrastructure for the sentinel policies in HCP.

- I have integrated HCP with this github repo (branch=HCP and directory=HCP).

- Everytime there is a new commit pushed to the branch, HCP automatically triggers a new run (plan, verify the resources against the policies, and apply).

- HCP had access to create aws resources using AWS_ACCESS_KEY_ID & AWS_SECRET_ACCESS_KEY variables.

### Sentinel

- I have created 5 policies in this lab:

1. enforce_ec2_size
Restricts Amazon EC2 instances to approved, cost-effective instance types (such as t3.micro).

2. enforce_region
Restricts cloud deployments to approved geographical regions to satisfy data residency and digital sovereignty requirements.

3. enforce_terraform_version
Prevents older, unpatched, or deprecated versions of the Terraform CLI from running infrastructure, protecting the deployment workflow from known security vulnerabilities or regression bugs.

4. enforce_aws_name_tag
Mandates proper resource tagging (such as Name = "terraform-lab") for asset governance, ownership tracking, and auditing.

5. restrict_ami_owner
Restricting AMI ownership (e.g., to trusted publishers like Canonical) to prevent unverified image usage.

### Recommendatiosn

- Sentinel should not be the only method to enforce compliance and security policies. For example security scanning tools, IAM controls,...

- Sentinel can only prevent or advise when creating new resources or update existing ones using terraform for example. It can't detect changes made to the resources manually.

### Limitations

- I don't have a free tier aws account, so I did all the tests in a sandbox environment initiated from AWS academy. Each session is available fro 3 hours only and some AWS resources are not available to use. And I only had access to us-east-1 region.

- I have tested the sentinel policies in HCP. Because I created a free account, I could only create one policy set and 5 individual policies (only one of them is Hard Mandatory and rest is advisory).

- Another limitation for using HCP/Sentinel is the pricing model. Customers get charged per resource. And for large envinments, this can add up.

- To maintain sentinel policies, this require more operational effort to create/update the policies.