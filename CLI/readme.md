## Terraform Cheatsheet

#### Basic workflow
```shell script
  terraform init              // Initializes the terraform, downloads resources
  terraform plan              // terraform talks to the IAAS provider and identifies what it needs to do (Desired configuration_
  terraform apply             // Terraform applies the changes to arrive at the desired state._
  terraform refresh
  terraform destroy           // Destroys the resources created using terraform
```

#### Initial
```shell script
terraform output              // Reads the output fro a state file. 
terraform -install-autocomplete
terraform providers         // lists out the terraform provider installed in your system
terraform version

terraform plan -out <planfile>  // output the plan to a file
terraform apply <planfile>      // Apply terraform based on the input plan file
terraform show                  // Shows the current plan
terraform get https://github.com/terraform-google-modules/terraform-google-lb.git
terraform login
terraform logout
```

#### Taint and untaint
