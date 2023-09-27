dev:
    rm -rf .terraform
    terraform init -backend-config=env-dev/state.tfvars
    terraform apply -auto-approve -var-file=env-dev/ain.tfvars

prod:
    rm -rf .terraform
    terraform init -backend-config=env-prod/state.tfvars
    terraform apply -auto-approve -var-file=env-prod/ain.tfvars