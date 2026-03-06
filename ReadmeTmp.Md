##CONTRASEÑA DEL ADMIN Y TODOS LOS USUARIOS DE CARGA INICIAL ES: Demo2018
- Usuario   : ADMIN
- Contraseña: Demo2018
*Nota: AL crear o resetear un usuario la contraseña es su número de documento.

##HERRAMIENTAS:
#Ubuntu Server: https://ubuntu.com/download/server
#DBeaver: https://dbeaver.io/download/
#MobaXterm: https://mobaxterm.mobatek.net/download-home-edition.html
#Java Decopiler: https://java-decompiler.github.io/

##CONVERTIR IMAGEN A BASE64 Y A LA INVERSA:
https://base64.guru/converter/decode/image
https://www.rapidtables.com/web/tools/base64-to-image.html
https://base64-to-image.com/

##DESCARGAR JDK 8 DE ORACLE U OPENJDK:
- https://www.azul.com/downloads/?version=java-8-lts&os=windows&package=jdk#zulu
- Windows: https://www.oracle.com/pe/java/technologies/downloads/
- Linux: https://adoptium.net/es/temurin/releases/

##INSTALAR Y CONFIGURAR VARIABLE DE ENTORNO:
#WINDOWS:
JAVA_HOME
C:\Program Files\Java\jdk-1.8
%JAVA_HOME%\bin
#LINUX: OpenJDK 8 JDK
sudo apt update
sudo apt install openjdk-8-jdk

Payara: https://repo1.maven.org/maven2/fish/payara/distributions/payara/5.2022.5/
BD PostgreSQL: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
JDBC: https://jdbc.postgresql.org/download/
Linux: https://www.postgresql.org/download/linux/ubuntu/

##VERIFICAR LA VERSIÓN DEL JAVA Y CONFIGURAR LA HORA DEL SERVIDOR
#LINUX:
sudo su -
sudo apt-get update
ls
java -version
hostnamectl
timedatectl
timedatectl list-timezones | grep America
timedatectl list-timezones | grep -i 'lima'
sudo timedatectl set-timezone America/Lima
ls -lart

##INSTALAR POSTGRESQL
apt instalL postgresql
sudo systemctl restart postgresql

#INSTALACIÓN JDK 8
sudo apt update
sudo apt install -y openjdk-8-jdk

##INSTALACIÓN DEL PAYARA SERVER:
#DIRIGIRSE A LAS RUTA (LINUX)
cd /opt/payara5/bin/
*Nota: La ruta depende de dónde está la carpeta payara
#EJECUTAR LÍNEA POR LÍNEA
./asadmin start-domain domain1
./asadmin change-admin-password
./asadmin enable-secure-admin
./asadmin restart-domain domain1
./asadmin login

#CON UN POWER SHELL DIRIGIRSE A LA RUTA (WINDOWS):
C:\payara5\bin
#EJECUTAR LÍNEA POR LÍNEA
./asadmin start-domain domain1
./asadmin change-admin-password
./asadmin enable-secure-admin
./asadmin restart-domain domain1
./asadmin login

##DESCARGAR JDBC (Se descargar de acuerdo a  la Base de Datos):
SQL Server: https://learn.microsoft.com/es-es/sql/connect/jdbc/download-microsoft-jdbc-driver-for-sql-server?view=sql-server-ver16
PostgreSQL: https://jdbc.postgresql.org/download/

##RUTA PARA COPIAR EL JDBC:
Windows: C:\payara5\glassfish\domains\domain1\lib\
Linux: payara5/glassfish/domains/domain1/lib/

##INGRESAR AL PAYARA DESDE LA WEB
https://localhost:4848/ o https://IP_DE_TU_SERVIDOR_DE_APLICACIONES:4848/
IR A: CONFIGURATION ---> SERVER-CONFIG ---> JVM SETTING ---> JVM OPTIONS

#AGREGAR SI NO EXISTE:
-Xmx6144m  #-Xmx (Memoria Máxima de almacenamiento dinámico Java)
-Xms6144m  #-Xms (Memoria Inicial mínimo de almacenamiento dinámico Java)
-Duser.timezone=America/Lima

#VER TRAMA DE XML (Debug SOAP)
-Dcom.sun.xml.ws.transport.http.client.HttpTransportPipe.dump=true
-Dcom.sun.xml.internal.ws.transport.http.client.HttpTransportPipe.dump=true

##JDBC CONNECTION POOLS:##
IR A: JDBC ---> JDBC CONNECTION POOLS ---> New
- Pool Name   : SGD_IO_Connection_Pools
- Resouce Type: javax.sql.ConnectionPoolDataSource
- Seleccionamos: Postgresql o Oracle o MicrosoftSqlServer

#THREAD POOLS
IR A: CONFIGURATION ---> SERVER-CONFIG ---> THREAD POOLS ---> HTTP-THREAD-POOL
Max Thread Pool Size: 500

IR A: JDBC ---> JDBC CONNECTION POOLS ---> POOL DE CONEXIÓN CREADA ---> GENERAL
Pool Settings:
- Initial and Minimum Pool Size: 10
- Maximum Pool Size: 100

##JDBC CONNECTION POOLS
IR A: JDBC ---> JDBC CONNECTION POOLS ---> POOL DE CONEXIÓN CREADA ---> ADDITIONAL PROPERTIES

#POSTGRESQL:
- URL: jdbc:postgresql://IP_SERVIDOR_DB:5432/NOMBRE_DB
- Url: jdbc:postgresql://IP_SERVIDOR_DB:5432/NOMBRE_DB
- User: USUARIO_DB
- Password: CONTRASEÑA_DB
- ServerName: IP_SERVIDOR_DB

#SQL SERVER:
- URL: jdbc:sqlserver://IP_SERVIDOR_DB:1433;databaseName=NOMBRE_DB
- Url: jdbc:sqlserver://IP_SERVIDOR_DB:1433;databaseName=NOMBRE_DB
- User: USUARIO_DB
- Password: CONTRASEÑA_DB
- ServerName: IP_SERVIDOR_DB

#ORACLE:
- URL: jdbc:oracle:thin:@IP_DE_TU_SERVIDOR_DE_DB:1521:XE
- User: USUARIO_DB
- Password: CONTRASEÑA_DB
- ServerName: IP_SERVIDOR_DB

##JDBC RESOURCES:
IR A: JDBC ---> JDBC RESOURCES --->
#POSTGRESQL
jdbc/idotradocDS_PostgreSql
jdbc/tdSecurityDS_PostgreSql
jdbc/sgdconsultaDS_PostgreSql
jdbc/consulta_sgd_postgresql
jdbc/mpv_sgd_SQL
jdbc/verifica_sgd_postgresql
jdbc/sgdtareaDS_PostgreSql

#SQL SERVER
jdbc/idotradoc_webSqlDS
jdbc/tdSecurity_SqlDS
jdbc/sgdconsulta_webSqlDS
jdbc/consulta_sgd_SQL
jdbc/mpv_sgd_SQL_SERVER
jdbc/verifica_sgd_SQL
jdbc/sgdtareaDS_SqlServer

#ORACLE
jdbc/idotradoc_webDS_oracle
jdbc/tdSecurityDS_oracle
jdbc/sgdconsulta_webDS_oracle
jdbc/consulta_sgd_ora
jdbc/mpv_sgd_SQL_ORACLE
jdbc/verifica_sgd_ora
jdbc/sgdtareaDS_Oracle

##CREAR LAS CARPETAS EN LAS SIGUIENTE RUTA:
#WINDOWS:
C:\tmp
C:\tmppcm
#LINUX:
/glassfish
/glassfish/tmp
/glassfish/tmppcm

##CREAR RUTA DE LA IMAGEN LOGIN:
Windows - C:\payara5\glassfish\domains\domain1\docroot\recursos\images
Linux - payara5/glassfish/domains/domain1/docroot/recursos/images

##COPIAR LAS CARPETAS PROPERTIES: sgdproperties, consultaproperties, mpvproperties y verificaproperties EN LA SIGUIENTE RUTA:
Windows: C:\payara5\glassfish\domains\domain1\
Linux:/payara5/glassfish/domains/domain1/

##EDITAR LOS .WAR: Antes de desplegar, debe editar los archivos .properties dentro de los .war o en las rutas de clases:
#WSIOTRAMITE (Interoperabilidad)
Archivo: wsiotramite\WEB-INF\classes\MessageResource.properties
Cambio: NOMBRE_ENTIDAD = [PONER_NOMBRE_COMPLETO_ENTIDAD] (1)

#MPVIO
mpvio/WEB-INF/classes/pe/gob/segdi/iotramitesgd/messageresource/Parametros.properties
P_RUC_ENTIDAD_EMISORA = [RUC_ENTIDAD] (1)
P_NOMBRE_ENTIDAD_EMISORA = [NOMBRE_ENTIDAD] (3)
P_DIRECCION_ENTIDAD_EMISORA = [DIRECCIÓN_ENTIDAD] (4)
P_RUTA_SGD_LOGIN= [ENLACE_SGD_LOGIN] (48)

##DEPLOYAR LOS .WAR
IR A: APPLICATIONS ---> DEPLOY ---> SELECCIONAR ARCHIVO ---> OK
#APLICACIONES INTERNAS:
- sgd.war = Sistema de Gestión Documental = https://IP_DE_SERVIDOR_DE_APP_O_DOMINIO:8181/sgd/login.do
- mpvio.war = Mesa de Partes Virtual de Interoperabilidad = https://IP_DE_SERVIDOR_DE_APP_O_DOMINIO:8181/mpvio/login.jsf
- wsiotramite.war = https://IP_DE_SERVIDOR_DE_APP_O_DOMINIO:8181/wsiotramite/Tramite?wsdl
- wstradoc.war = https://IP_DE_SERVIDOR_DE_APP_O_DOMINIO:8181/wstradoc/
- notificador.war =

#APLICACIONES EXTERNAS:
- mpd = Mesa de Partes Digital del Ciudadano = https://IP_DE_SERVIDOR_DE_APP_O_DOMINIO:8181/mpd/inicio.do
- consulta = Consultar Documentos = https://IP_DE_SERVIDOR_DE_APP_O_DOMINIO:8181/consulta/inicio.do
- verifica = Verificador y/o Validador = https://IP_DE_SERVIDOR_DE_APP_O_DOMINIO:8181/verifica/inicio.do