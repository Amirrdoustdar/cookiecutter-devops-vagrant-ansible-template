.PHONY: all init infra config destroy help

INFRA_DIR=infra
ANSIBLE_DIR=$(INFRA_DIR)/ansible
VAGRANT_DIR=$(INFRA_DIR)/vagrant

all: init infra config
	@echo "✅ All steps completed."

init:
	cd $(ANSIBLE_DIR) && ansible-galaxy install -r requirements.yml

infra:
	cd $(VAGRANT_DIR) && vagrant up

config:
	cd $(ANSIBLE_DIR) && ansible-playbook -i inventory playbook.yml

destroy:
	cd $(VAGRANT_DIR) && vagrant destroy -f

help:
	@echo "Targets:"
	@echo "  make init     - install Ansible roles"
	@echo "  make infra    - start Vagrant VM"
	@echo "  make config   - run Ansible playbook"
	@echo "  make all      - init + infra + config"
	@echo "  make destroy  - destroy Vagrant VM"
