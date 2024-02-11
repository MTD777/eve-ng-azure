
## Important note, the installation of EVE NG will take around 10-15 mins, the VM will be available before that but you need to wait

cd images-folder

scp -r -i /home/vscode/.ssh/id_rsa ./images/* eve-ng@mfkng.northcentralus.cloudapp.azure.com:/opt/unetlab/addons/qemu/

#/opt/unetlab/wrappers/unl_wrapper -a fixpermissions

# Other commands:

tar -xvzf catalyst8000v-17.06.02.tgz # Untar and uncompress doc

# Install ansible

sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
ansible-playbook -u eve-ng -i inventory playbook.yml --ask-pass

# Generate SSH keypair
# https://learn.microsoft.com/en-us/azure/virtual-machines/linux/mac-create-ssh-keys
ssh-keygen -m PEM -t rsa -b 4096  
cp /home/vscode/.ssh/id_rsa.pub /terraform/files/
cat id_rsa.pub # Check pub key is there
eval `ssh-agent -s`
ssh-add /home/vscode/.ssh/id_rsa

# troubleshoot cloud init config - https://learn.microsoft.com/en-us/azure/virtual-machines/linux/cloud-init-troubleshooting