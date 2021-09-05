docker-build:
	docker build . -t kiwiclient:latest

docker-run:
	docker run -it -v `pwd`/kiwiclient:/usr/src/app kiwiclient:latest /bin/bash