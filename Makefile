run:
	ansible-playbook -i inventory playbook.yml --ask-become-pass

install:
	ansible-galaxy install -r requirements.yml
