# learning-devops
My roadmap and write-ups for learning DevOps

## Terraform

### Begginning
The premise is really basic. Let's provision a simple EC2 instance using terraform in our preferred AWS region.

Objectives:

1. Provision EC2 t2.micro instance in AWS eu-central-1 (frankfurt) region.
2. Do it securely (without leaking credentials)

Addressing issue number one, we can find the appropriate terraform config files inside [terraform/first-steps](./terraform/first-steps/) folder in `instance.tf` file. To do this securely and not accidentaly commit our secrets, like AWS IAM user's `access key` or `secret key` we're using the `firs-steps.tfvars`, which allows us to dynamically supply the data to the terraform configuration on planning phase, without the need to commit it to the repository. (Also, we need to remember to add `*.tfvars` files to our `.gitignore` file.)
