molecule-test:
	molecule test -s default

molecule-test-without-destroy:
	molecule test -s default --destroy=never

molecule-destroy:
	molecule destroy -s default

molecule-verify:
	molecule verify -s default