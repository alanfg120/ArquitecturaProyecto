#!/bin/bash

# Array con las rutas de los archivos docker-compose.yml
COMPOSE_FILES=(
    "/apigetway/docker-compose.yml"
    "/loadbalacer/docker-compose.yml"
    "/minio/docker-compose.yml"
    "/minio/docker-compose.yml"
    "/mongo/docker-compose.yml"
    "/mysql/docker-compose.yml"
    "/rabitmq/docker-compose.yml"
    "/tuberias/docker-compose.yml"
)

# Función para ejecutar cada archivo docker-compose
run_compose() {
    local compose_file=$1
    echo "Iniciando servicios desde: $compose_file"
    sudo docker-compose -f "$compose_file" up -d
    if [ $? -eq 0 ]; then
        echo "Servicios desde $compose_file iniciados correctamente."
    else
        echo "Error al iniciar servicios desde $compose_file."
    fi
}

# Iterar sobre el array y ejecutar cada archivo
for file in "${COMPOSE_FILES[@]}"; do
    run_compose "$file"
done

echo "Todos los archivos docker-compose han sido procesados."