FROM alpine:3.7
ENTRYPOINT ["/bin/logspout"]
VOLUME /mnt/routes
EXPOSE 80

RUN apk update && apk add bash

COPY . /src
RUN cd /src && ./build.sh "$(cat VERSION)"

ONBUILD COPY ./build.sh /src/build.sh
ONBUILD COPY ./modules.go /src/modules.go
ONBUILD RUN cd /src && chmod +x ./build.sh; sleep 1 && sync && ./build.sh "$(cat VERSION)-custom"
