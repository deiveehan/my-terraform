## Initial GCP project setup


#### Initial steps to be followed in GCP
* Create a GCP project. 
* Create a Service account for terraform and store the key json somewhere. 
* Create a bucket called "ctrlspace-tf-bucket" with folder called "tf-state"
* Set the service account to the env variable
export GOOGLE_APPLICATION_CREDENTIALS=<location of the service key that you downloaded>

