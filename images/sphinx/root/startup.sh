#!/bin/bash

until mysql -h"database" -u"root" -e"quit"; do
  sleep 1
done

>&2 echo "MySQL is now available."

service crond start && indexer --all && searchd --nodetach

