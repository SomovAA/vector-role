molecule-test:
	molecule test -s default

molecule-test-podman:
	molecule test -s podman

molecule-test-without-destroy:
	molecule test -s default --destroy=never

molecule-destroy:
	molecule destroy -s default

molecule-verify:
	molecule verify -s default

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-down-clear:
	docker-compose down --volume --remove-orphans

docker-exec-tox:
	docker exec -it aragast sh -c 'tox'

docker-exec-tox-list:
	docker exec -it aragast sh -c 'tox -l'

docker-exec-tox-e:
	docker exec -it aragast sh -c 'tox -e py39-ansible30 -vvv'