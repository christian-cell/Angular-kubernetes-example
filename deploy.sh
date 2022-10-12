#primero sincronizamos nuestro repo local de docker con minikube
# $ eval $(minikube docker-env)

#eliminamos el dist anterior
rm -rf ./dist

#generamos el directorio dist
ng build --configuration production

#si nos encontramos en la raiz del proyecto construimos la images , cambiar la version también en kubernetes/angular-deployment
docker build -t angular-kubernetes:1.0.1 .

#eliminamos el deployment
kubectl delete deployment angular-deployment

#lo volvemos a generar el deployment
kubectl apply -f ./kubernetes/angular-deployment.yaml

