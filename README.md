Steps to launch an EC2 instance


terraform init -- downloads the provider related resource plugins
terraform apply -- manage infrastructue as per *.tf files
terraform destroy -- destroy the infrastructure created using *.tf config file

For debugging purpose set the env variable TF_LOG to trace to see the logs on console
export TF_LOG=TRACE

