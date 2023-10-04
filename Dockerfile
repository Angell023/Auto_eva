# Utiliza la imagen base de Ubuntu 22.04 (o la versión que desees)
FROM ubuntu:22.04

# Actualiza el sistema y luego instala Nginx
RUN apt-get update && apt-get install -y nginx

# Expón el puerto 80 para que Nginx sea accesible desde fuera del contenedor
EXPOSE 80

# Inicia Nginx cuando se inicie el contenedor
CMD ["nginx", "-g", "daemon off;"]

