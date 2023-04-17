# Desarrollo Web Hotel
Abrir CMD y direccionarse a la carpeta bin de Widfly

Coneccion para el servidor
--> jboss-cli.bat --connect --controller=localhost:9990

Ubicar el JAR de postgres (si es la primera vez)
--> module add --name=org.postgres.uwin --resources= "‪C:\Users\Clever\Documents\UTP-Marzo\Diseño Web\JDBC\postgresql-42.5.4.jar" --dependencies=javax.api,javax.transaction.api

Usar el usuario
-->/subsystem=datasources/jdbc-driver=postgres-uwin:add(driver-name=postgres-uwin, driver-module-name=org.postgres.uwin)

Coneccion con la base de datos (Usar la contraseña y usuario del postgres)
-->data-source add --jndi-name=java:/jdbc/dbhotel --name=dbhotelpool --connection-url=jdbc:postgresql://localhost:5432/dbhotel --driver-name=postgres-uwin --user-name=postgres --password=admin
