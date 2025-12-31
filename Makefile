.PHONY: build-toolbox

build-toolbox:
	podman build --squash --tag localhost/argo-bootcamp:43 ./toolbx/
	toolbox create --image localhost/argo-bootcamp:43 argo-bootcamp

