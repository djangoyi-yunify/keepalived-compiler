OSV ?= 22.04
NAMESPACE ?= djangoyi

# OSV=22.04 make ubuntu-build
ubuntu-build:
	docker buildx build -f Dockerfile-ubuntu --build-arg OSV=${OSV} --platform linux/amd64,linux/arm64 -t ${NAMESPACE}/keepalived-compiler:ubuntu-${OSV} . --push

# OSV=10sp3 make kylin-build
kylin-build:
	docker buildx build -f Dockerfile-kylin --build-arg OSV=${OSV} --build-arg NAMESPACE=${NAMESPACE} --platform linux/amd64,linux/arm64 -t ${NAMESPACE}/keepalived-compiler:kylin-${OSV} . --push