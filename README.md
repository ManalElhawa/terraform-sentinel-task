# terraform-sentinel-task

IAC Course, Terraform/Sentinel Assignment

Student ID: L00205331

Student Name: Manal Elhawa

========================================
### Tests

#### test-01-9_Nov_2026
- Used HCP to plan and apply the terraform project with no sentinel policies.
- [Evidence](./tests/test-01-9_Nov_2026/)

#### test-02-9_Nov_2026
- Created an advisory snetinel policy in HCP to enforce tags.
- Pushed commit [55b4277](https://github.com/ManalElhawa/terraform-sentinel-task/commit/55b42774168bcd6a81b24ca9038b363c801fc694) to remove the name tage from the EC2 resource in terraform file.
- Commit triggered an automatic run in HCP to apply the new changes. Since the policy was advisory, the terraform changes were applied.
- [Evidence](./tests/test-02-9_Nov_2026/)

#### test-03-15_Nov_2026
- I created a hard mandatory policy "enforce_ec2_size" to only use approved instance types.
- In this test I set the allowed instance types to be t3.small/medium/micro.
- I modified the terraform files to create t2.nano instance, and the sentinel checks failed.
- [Evidence](./tests/test-03:run-oSD47t5Rn5wau8KF/)

#### test-04-15_Nov_2026
- I updated the terraform files again to use t3.micro instance type and the sentinel checks passed.
- [Evidence](./tests/test-04:run-FKFtjpHm1QidAwyo/)

#### test-05-15_Nov_2026
- I created a hard mandatory policy "enforce_region" to only use approved geographical regions.
- In this test I set the allowed regions to be us-west-1 and us-west-2
- And since the terraform code had the provider region set to us-east-1, the sentinel check failed.
- [Evidence](./tests/test-05:run-GkugGz89nPctvnRZ/)

#### test-06-15_Nov_2026
- In this test I set the allowed regions to be us-east-1 and us-east-2
- And since the terraform code had the provider region set to us-east-1, the sentinel check passed.
- [Evidence](./tests/test-06:run-x7hzGTJzznSh6v8S/)

#### test-07-15_Nov_2026
- I created an advisory policy "enforce_terraform_version" to set the minimum required terraform version. I tested the policy by setting the version to 1.18.0. And the terraform version used by HCP was 1.17.1 at that time.
- And created a hard mandatory policy "enforce_ami_owner"  to make sure only AMIs created by trusted sources can be used (in that case canonical). And tested it by using Amazon Linux image in the terraform files.
- Both polices failed in that run.
- [Evidence](./tests/test-07:run-TCRyU4Y4baBA1csx/)


#### test-08-15_Nov_2026
- I removed the tags from the EC2 instance configurations to test the "enforce-aws-name-tag" policy.
- Since the the policy was advisory, the policy chcks failed but resources were applied as planned.
- [Evidence](./tests/test-08:run-TFonaLEAGpqGVHkt/)

#### test-09-15_Nov_2026
- Tested all the reources against the five policies and the sentinel policies checks passed.
- [Evidence](./tests/test-09:run-WAAtJnEU61YQPeMo/)

========================================
### Reference List

- I have used the sample terraform files in the [Terraform Tutorials](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-create) to create an initial AWS setup includes a VCP and EC2 instance.

- For HCP setup, I have used the below tutorials:
1. https://www.youtube.com/watch?v=n1kS8jKf70E
1. https://www.youtube.com/watch?v=kqMVx8U7heo

- Github Copilot GPT-6 Luna
```
Can you help me create a test sentinel policy to enforce the name tag in aws resources.
I will use this in HCP (Hashicorp Cloud Platform)
```

- I used [Sentinel Hashicorp Tutorial](https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-policy) as a reference for the enforce_ec2_size policy.

- I used [restrict-aws-region.sentinel](https://github.com/hashicorp/terraform-guides/blob/master/governance/first-generation/aws/restrict-aws-region.sentinel) as a reference for the enforce_region policy

- I used [restrict-ami-owners.sentinel](https://github.com/hashicorp/terraform-sentinel-policies/blob/main/aws/restrict-ami-owners.sentinel) as a reference for the restrict_ami_owners policy.

- I used [Terraform Hashicorp Tutorial](https://developer.hashicorp.com/terraform/tutorials/policy/policy-quickstart) as a reference for the enforce_terraform_version ploicy.