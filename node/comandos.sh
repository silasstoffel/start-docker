# Rodando o docker file (o . é para representa onde está o Dockerfile)
sudo docker build -t node/lab-node-alpine .

# Levantando o Container
sudo docker run -p 3000:3000 -d node/lab-node-alpine

# Usando o docker composer
sudo docker-compose up