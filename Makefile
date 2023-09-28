virginia: 
	terraform init && terraform apply  -var-file envs/regions/virginia.tfvars

ohio: 
	terraform init && terraform apply  -var-file envs/regions/ohio.tfvars

oregon: 
	terraform init && terraform apply -var-file envs/regions/oregon.tfvars

build-all: 
	make ohio && make oregon 
 
#############################################################################################################################################
destroy-virginia:
	terraform destroy -var-file envs/regions/virginia.tfvars

destroy-ohio:
	terraform destroy  -var-file envs/regions/ohio.tfvars

destroy-oregon:
	terraform destroy  -var-file envs/regions/oregon.tfvars

destroy-all:
	make destroy-virginia && make destroy-ohio && make destroy-oregon 






























































