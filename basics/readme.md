## Kubernetes cluster creation

Installs a basic compute engine instance using the tf template file. 

#### Configurations
[terraform file](main.tf)


#### Steps to run

```shell script
terraform init
terraform plan
terraform apply

```

#### Validate
Check if the compute instances are created as per the configuration mentioned in the tf eil. 


#### Cleanup
```shell script
terraform destroy
```

This should cleanup all resource you created using terraform.
