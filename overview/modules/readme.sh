### What are Modules
Terraform uses reusable resources called as modules as part of the script to provision resources.


<img src="../images/Terraform-Modules.png"></img>

Example: A java module can java jar-name and location as input to the module and output url to access the app as output.

Other examples:
- VM module can accept name and vmtype as input, provision the vm and output ip address generated.

Modules are available in the terraform registry [Click here](https://registry.terraform.io/)
Modules are provided by different providers and you can also publish your own modules.

(i.e., ) Google provided tf modules are available [here](https://registry.terraform.io/providers/hashicorp/google/3.24.0)

A module can simply be thought of any location of the source files that has the terraform source files.
You can point to a module source in different ways.
* local file system paths.
* Terraform registry
* Github
* Bitbucket
* Http urls
* S3/GCS buckets.

More about module sources can be found [here](https://www.terraform.io/docs/modules/sources.html#github)


