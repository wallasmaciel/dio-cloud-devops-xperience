echo "Buildando e realizando push das imagens..."

docker build backend/. -t wallasmaciel/k8s-php-desafio:1.0
docker build database/. -t wallasmaciel/k8s-mysql-desafio:1.0

docker push wallasmaciel/k8s-php-desafio:1.0
docker push wallasmaciel/k8s-mysql-desafio:1.0

echo "Criando services e deployment no cluster..."

kubectl apply -f ./services.yml
kubectl apply -f ./deployment.yml