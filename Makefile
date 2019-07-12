SHELL := /bin/bash
VAR_DIR = "variables"
TERRAFORM_APPLY = "terraform apply -auto-approve -var-file="
TERRAFORM_DESTROY = "terraform destroy -auto-approve -var-file="

terraform-init:
	@terraform init

mean-apply:
		@"${TERRAFORM_APPLY}${VAR_DIR}"/mean_run.tfvars

mean-destroy:
		@"${TERRAFORM_DESTROY}${VAR_DIR}"/mean_run.tfvars


.PHONY = terraform-init mean-apply mean-destroy
