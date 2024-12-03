# Puertos disponibles

+ 6446 - mysql
+ 6447 - mysql
+ 6448 - minio
+ 6449 - minio
+ 6450 - portainer
+ 6451 - mongodb
+ 6452 - webapp
+ 6453 - apigetway
+ 6454 - mongodb
+ 6455 - mongodb
+ 6456 - mongodb
+ 6457
+ 6458
+ 6459
+ 6460



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

