# Usa la imagen oficial de Tomcat 9.0 para compatibilidad completa
FROM tomcat:9.0

# Copia los archivos de la aplicación web al directorio ROOT de Tomcat
COPY WebContent/ /usr/local/tomcat/webapps/ROOT/

# Expone el puerto 8080 para acceder a la aplicación
EXPOSE 8080

# Comando para iniciar Tomcat con ruta completa para evitar problemas de PATH
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]