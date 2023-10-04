# Utiliza la imagen base de Ubuntu 22.04 (o la versión que desees)
FROM ubuntu:22.04

RUN apt update -y
RUN apt install nginx -y

# Actualiza el sistema y luego instala Nginx
COPY proyecto_boostrap/* /usr/share/nginx/html

# Expón el puerto 80 para que Nginx sea accesible desde fuera del contenedor
EXPOSE 80

# Inicia Nginx cuando se inicie el contenedor
CMD ["nginx", "-g", "daemon off;"]

