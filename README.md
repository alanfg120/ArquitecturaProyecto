# ArquitecturaProyecto
Mono repo para proyecto de arquitectura 


# Mostrar Contenedores de aplicacion Web con balaceador de carga

 sudo docker ps -a | grep -E "nginx|react"
 puerto: 8080


# Mostrar Contenedores de cluster de Mysql

 sudo docker ps -a | grep -E "mysql"
 puerto de lectura   : 6447
 puerto de escritura : 6446


# Mostrar Contenedores de cluster de Minio

 sudo docker ps -a | grep -E "minio"
 puerto de escritura : 6448
 puerto de dashboard : 6449

