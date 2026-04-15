FROM ubuntu:latest

COPY script.sh usr/local/bin/script.sh

# Dar permisos de ejecución y correr el script
RUN chmod +x /usr/local/bin/script.sh
RUN /usr/local/bin/script.sh

# Mensajes de control en otra capa
RUN echo "Inicio de script" \
    && echo "Paso 1" \
    && echo "Paso 2" \
    && echo "Paso 3"