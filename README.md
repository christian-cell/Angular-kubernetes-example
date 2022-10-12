sync kubernetes to docker-local-env 
$ eval $(minikube docker-env)

and run
$ ./deploy.sh

$ kubectl get nodes -o wide 

copy internal ip and paste in browser internal-ip:31000