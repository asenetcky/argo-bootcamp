.PHONY: build-toolbox dev-local

build-toolbox:
	podman build --squash --tag localhost/argo-bootcamp:43 ./toolbx/
	toolbox create --image localhost/argo-bootcamp:43 argo-bootcamp

dev-local:
	toolbox enter argo-bootcamp
