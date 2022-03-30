#/usr/bin/env bash

set -eu -o pipefail

docker run -d --rm --name juice-shop -p 3000:3000 dkothari777/juice-shop:latest 

echo "Waiting for juice shop to come up" 
while [ "$(curl -I http://localhost:3000 2>/dev/null | head -n 1|cut -d$' ' -f2 )" != "200" ]; do
  echo "."
  sleep 3
done

if [ "$(uname -s)" == "Darwin" ]; then
  open http://localhost:3000 -a Google\ Chrome
else 
  echo "Please go to http://localhost:3000 in a browser" 
fi


