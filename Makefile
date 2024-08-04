.PHONY: install-ansible install-dependencies setup

install-ansible:
	@echo "Installing ansible..."
	sudo apt update
	sudo apt install -y ansible

install-dependencies::
	@echo "Installing dependencies..."
	ansible-galaxy install -r requirements.yml

setup:
	@echo "Setting up development environment..."
	ansible-playbook playbook.yml --ask-become-pass

