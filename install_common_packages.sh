apk add --no-cache git wget unzip
apk add --virtual .runDeps $runDeps
rm -rfv /tmp/*
rm -rfv /var/cache/apk/*