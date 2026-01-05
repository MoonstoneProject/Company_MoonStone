# Company_MoonStone

Sitio web basado en JSP para la empresa MoonStone (catálogo/portafolio de superficies y granito).

## Descripción

Proyecto web clásico basado en Java EE / Servlets + JSP. La aplicación contiene páginas JSP estáticas/dinámicas, recursos estáticos (CSS, JS, imágenes) y la configuración de despliegue en `WEB-INF/web.xml`.

## Estructura principal

- `WebContent/` : raíz pública del sitio (JSPs, HTML, CSS, JS, imágenes).
  - `css/`, `js/`, `img/` : activos estáticos.
  - múltiples archivos `.jsp` para páginas como `index.jsp`, `Portada_moon.jsp`, `menu_moon.jsp`, etc.
- `WEB-INF/` : configuración del servidor y despliegue (`web.xml`).
- `META-INF/` : metadatos del paquete.
- `.project` : metadatos de proyecto (posiblemente de Eclipse).

## Requisitos

- JDK 8+ (se recomienda JDK 11 para compatibilidad moderna).
- Contenedor de servlets compatible (Apache Tomcat 8/9/10, Jetty u otro).
- IDE recomendado: Eclipse (Dynamic Web Project) o IntelliJ IDEA Ultimate.

## Despliegue local (opciones)

1) Importar en Eclipse (recomendado):

   - `File` → `Import` → `Existing Projects into Workspace` (o crear `Dynamic Web Project` y copiar `WebContent` y `WEB-INF`).
   - Añadir un `Server` (Apache Tomcat) en la vista Servers.
   - Ejecutar el proyecto en el servidor. Acceder en `http://localhost:8080/<context>`.

2) Exportar WAR desde Eclipse:

   - `Right click` en el proyecto → `Export` → `WAR File`.
   - Copiar el WAR a la carpeta `webapps/` de Tomcat y arrancar Tomcat.

3) Si se prefiere línea de comandos: no hay build script incluido (Maven/Gradle). Recomiendo crear un `pom.xml` o `build.gradle` para automatizar el empaquetado. Alternativamente, genere el WAR desde el IDE.

## Desarrollo

- Las vistas están en `WebContent/` y se sirven como JSPs.
- CSS y JS en `WebContent/css` y `WebContent/js`.
- Imágenes en `WebContent/img` (subcarpetas como `moon/`).
- Configuración de despliegue en `WEB-INF/web.xml`.

## Notas y recomendaciones

- No se detectó un sistema de build (Maven/Gradle). Añadir uno facilita CI/CD y despliegues reproducibles.
- Verifique la versión de Java del servidor para evitar problemas de compatibilidad con el contenedor de servlets.
- Añadir un archivo `LICENSE` si desea especificar la licencia del código.

## Contribuciones

- Abrir issues o pull requests en el repositorio.
- Para cambios rápidos, describir el entorno local y pasos para reproducir.

## Autor / Contacto

Repositorio: steven-sanchez-brazil/Company_MoonStone

---
*Generado automáticamente: README básico con instrucciones para ejecutar y desarrollar localmente.*
