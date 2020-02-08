# Construir imagem
# -t tag -> nome amigável para a imagem
sudo docker build -t  mysql-image -f db/Dockerfile .

# Para lista imagem disponíveis do docker
sudo docker image list

# Para  rodar o container
# Nesse exemplo está sendo levantado o container com "volume" mapeado para não se perder os dados inseridos no banco de dados (-v endereco-computado:/endereço no container)
sudo docker run  -d -p 3306:3306 -v /home/silas/docker-volume-mysql:/var/lib/mysql --rm  --name mysql-container mysql-image

# Para listar os container em execução
sudo docker ps

# Acessando o MySQL dentro do container
sudo docker exec -it mysql-container /bin/bash

# Para parar um container, rode o docker ps e veja o ID do container, depois é só rodar o docker stop
sudo docker stop ${ID_CONTAINER}
# Exemplo: sudo docker stop 5de65e9a829d/
