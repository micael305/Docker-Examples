FROM nginx:latest

# Intento de update/upgrade (fallará por permisos no root en Debian/NGINX).
RUN apt-get update && apt-get upgrade -y

RUN RUN groupadd micael \
    && useradd -g micael admin

RUN chown -R micael:micael /usr/share/nginx/html
USER micael



# Comando que sí puede ejecutar: un eco desde bash.
RUN bash -c 'echo "app user funcionando"' 
