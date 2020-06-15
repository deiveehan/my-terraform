



## Workspaces
```shell script
t workspace new dev
t workspace new prod
t workspace list

t plan -out=tfdev_plan -var env=dev
t plan -out=tfdev_plan -var env=prod


t workspace select dev
t apply tfdev_plan
t destroy -var env=dev

t workspace select prod
t apply tfprod_plan
t destroy -var env=prod

t destroy -var env=prod
```
