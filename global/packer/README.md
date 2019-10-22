## Step1: Install packer
```
brew install packer
```
## Step2: Make sure aws credentials are set either using env variables or config file located at ~/.aws/credentials.
```
aws_access_key=""
aws_secret_key=""
```
## Step3: Create template for building EC2 AMI image. Required attributes for creating ec2 image are
* type: "amazon-ebs" 
* ami_name: ""
* source_ami: ""
* region: ""
* ssh_username: "" 

## Step4: Validate the image
```
packer validate <name-of-json-template>
packer validate ec2-template.json
```
## Step5: Customize base image by providing required software and scripts using 'provisioners' feature

## Step6: Build the image

```
packer build ec2-template.json
```
### Note: To overwrite an existing image use -force

   ```
   packer build -force ec2-template.json
   ```


Output after running build should be like below

```
==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-west-2: ami-09dd4001591d020e1
```
