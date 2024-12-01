#!/bin/bash
echo "Esperando a que MongoDB esté disponible..."
sleep 15

mongosh --host mongodb-master:27017 <<EOF
  var cfg = {
    _id: "myReplicaSet",
    version: 1,
    members: [
      {
        _id: 0,
        host: "mongodb-master:27017",
        priority: 2,
        tags: { role: "write" }
      },
      {
        _id: 1,
        host: "mongodb-node2:27017",
        priority: 0,
        tags: { role: "read" }
      },
      {
        _id: 2,
        host: "mongodb-node3:27017",
        priority: 0,
        tags: { role: "read" }
      }
    ]
  };
  rs.initiate(cfg);
EOF

echo "Replica Set inicializado correctamente."