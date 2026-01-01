.PHONY: create-kind start-viz start-kind stop-kind

create-kind:
	kind create cluster --config kind/kind-three-node-cluster.yaml

start-viz:
	kubectl apply -f visualizer/ 

start-kind:
	docker start kind-control-plane kind-worker kind-worker2
	kubectl get pods,services

stop-kind:
	docker ps
	docker stop kind-control-plane kind-worker kind-worker2
