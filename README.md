# Niture Project -- Oracle Cloud Infrastructure and Terraform Cloud <br>@ The Cloud Bootcamp
<br>

**Prerequisites:**
Set up the variables below on Terraform Cloud or you can commit any number of *.auto.tfvars files to provide default variable values.

- compartment_ocid
- region
- tenancy_ocid
- user_ocid
- fingerprint
- private_key
- ssh_public_key
  
This TF will provision:

- 1 VCN
- 1 Subnet
- 1 Internet Gateway + Routing Table
- 1 Security list + 3 Rules
- 2 Linux instances according to the image ID.
  
Outputs:
- Instances IP Addresses

:rocket: