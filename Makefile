

molecule-test-centos_7:
	molecule test -s centos_7

molecule-test-centos_7-without-destroy:
	molecule test -s centos_7 --destroy=never

docker-exec-vector-centos_7:
	docker exec -it centos_7 sh -c 'systemctl status vector'

docker-exec-vector-centos_7-ls:
	docker exec -it centos_7 sh -c 'ls ./vector2'

molecule-destroy:
	molecule destroy -s centos_7

molecule-verify:
	molecule verify -s centos_7