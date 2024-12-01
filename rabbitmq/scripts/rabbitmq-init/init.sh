#!/bin/bash
# Crear una cola llamada "notify" si no existe
rabbitmqctl wait /var/lib/rabbitmq/mnesia/rabbitmq.pid

# Crear una cola (si no existe) y un intercambio por defecto
rabbitmqctl add_queue notify

# Crear un intercambio (si no existe) y vincularlo a la cola
rabbitmqctl add_exchange exchange fanout
rabbitmqctl set_bindings exchange notify

# También puedes agregar otros recursos, como usuarios o permisos
rabbitmqctl add_user ${RABBITMQ_QUEUE_USER} ${RABBITMQ_QUEUE_PASS}
rabbitmqctl set_permissions -p / ${RABBITMQ_QUEUE_USER}  ".*" ".*" ".*"
