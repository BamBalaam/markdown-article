.PHONY: all docker_pull_image docker_run

all: docker_pull_image docker_run

docker_pull_image:
	docker pull dxjoke/tectonic-docker:latest

docker_run:
	docker run \
	-v ./:/usr/src/tex/ -v ./output:/usr/src/output \
	dxjoke/tectonic-docker tectonic /usr/src/tex/index.tex --outdir /usr/src/output