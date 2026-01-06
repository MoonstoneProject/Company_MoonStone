# Usa la imagen oficial de Apache Tomcat (última versión estable)
FROM tomcat:latest

# Limpiar el ROOT anterior y copiar los archivos de la aplicación
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY WebContent/ /usr/local/tomcat/webapps/ROOT/

# Exponer puerto 8080
EXPOSE 8080

# Iniciar Tomcat (el contenedor oficial ya usa catalina.sh)
CMD ["catalina.sh", "run"]