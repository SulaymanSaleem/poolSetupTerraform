SHELL := /bin/bash
VAR_DIR = "variables"
TERRAFORM_APPLY = "terraform apply -auto-approve -var-file="
TERRAFORM_DESTROY = "terraform destroy -auto-approve -var-file="

terraform-init:
	@terraform init

myinstall-apply:
		@"${TERRAFORM_APPLY}${VAR_DIR}"/myinstall.tfvars

myinstall-destroy:
		@"${TERRAFORM_DESTROY}${VAR_DIR}"/myinstall.tfvars

.PHONY = terraform-init  myinstall-apply myinstall-destroy
