# terraform-sentinel-task



========================================
### Tests

#### test-01-9_Nov_2026
- Used HCP to plan and apply the terraform project with no sentinel policies.

#### test-02-9_Nov_2026
- Created an advisory snetinel policy in HCP to enforce tags.
- Pushed commit [55b4277](https://github.com/ManalElhawa/terraform-sentinel-task/commit/55b42774168bcd6a81b24ca9038b363c801fc694) to remove the name tage from the EC2 resource in terraform file.
- Commit triggered an automatic run in HCP to apply the new changes. Since the policy was advisory, the terraform changes were applied.

========================================
### Reference List

- I have used the sample terraform files in the [Terraform Tutorials](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-create) to create an initial AWS setup.

- For HCP setup, I have used the below tutorials:
1. https://www.youtube.com/watch?v=n1kS8jKf70E
1. https://www.youtube.com/watch?v=kqMVx8U7heo

- Github Copilot GPT-6 Luna
```
Can you help me create a test sentinel policy to enforce the name tag in aws resources.
I will use this in HCP (Hashicorp Cloud Platform)
```