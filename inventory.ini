#!/bin/bash

if [ "$1" == "--list" ] ; then
cat<<EOF
{
    "lab": {
        "hosts": [
            "node2.ansi.example.com",
            "node3.ansi.example.com"
        ],
        "children": [],
        "vars": {}
    },
    "dev": {
      "hosts": [
          "node1.ansi.example.com"
      ],
      "children": [],
      "vars": {}
    },
    "prod": {
        "hosts": [
            "node4.ansi.example.com"
        ],
        "children": [],
        "vars": {}
    },
    "_meta": {
        "hostvars": {
            "node1.ansi.example.com": {
                "ansible_host": "192.168.55.201"
            },
             "node2.ansi.example.com": {
                "ansible_host": "192.168.55.202"
            },
             "node3.ansi.example.com": {
                "ansible_host": "192.168.55.203"
            },
             "node4.ansi.example.com": {
                "ansible_host": "192.168.55.204"
            }
        }
    }
}
EOF
elif [ "$1" == "--host" ]; then
  echo '{"_meta": {"hostvars": {}}}'
else
  echo "{ }"
fi
