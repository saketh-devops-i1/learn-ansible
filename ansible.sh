component=$1

rm -f ~/*.json
ansible-playbook get-secrets.yml -e vault_token=$vault_token -e env=$env -e role_name=$component
ansible-playbook -i $component-$env.devops-saketh.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e env=$env -e role_name=$component expense.yml -e '@~/secrets.json' -e '@~/app.json'
rm -f ~/*.json