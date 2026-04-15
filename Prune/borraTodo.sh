#!/bin/bash

# Borra todas las imagens sin etiqueta
docker image prune -a 

#Borra todos los contenedores detenidos
docker container prune 

#Borra todas los volúmenes no utilizados
docker volume prune

#Borrar todas las images, contenedores y volúmenes no utilizados
docker system prune 

#Borra el cache de compilación de Docker
docker builder prune 