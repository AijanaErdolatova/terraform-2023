
oregon-apply:
	terraform workspace new oregon || terraform workspace select oregon
	terraform init
	terraform apply --var-file regions/oregon.tfvars --auto-approve


virginia-apply:
	terraform workspace new virginia || terraform workspace select virginia
	terraform init
	terraform apply --var-file regions/virginia.tfvars --auto-approve

ohio-apply:
	terraform workspace new ohio || terraform workspace select ohio
	terraform init
	terraform apply --var-file regions/ohio.tfvars --auto-approve

apply-all: oregon virginia ohio

virginia-destroy:
	terraform workspace new virginia || terraform workspace select virginia
	terraform init
	terraform destroy --var-file regions/virginia.tfvars --auto-approve
	
ohio-destroy:
	terraform workspace new ohio || terraform workspace select ohio
	terraform init
	terraform destroy --var-file regions/ohio.tfvars --auto-approve

oregon-destroy:
	terraform workspace new destroy || terraform workspace select oregon
	terraform init
	terraform destroy --var-file regions/oregon.tfvars --auto-approve