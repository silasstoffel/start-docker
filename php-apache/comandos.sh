# Montar a imagem
sudo docker build -t php-image -f www/Dockerfile .

# Montar container 
sudo docker run -d -v $(pwd)/www:/var/www/html -p 8888:80 --link mysql-container --rm --name php74-container php-image
