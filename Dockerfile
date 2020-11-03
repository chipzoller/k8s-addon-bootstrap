FROM alpine:3.12.1
#Runas non-root
#RUN addgroup -g 1001 -S appuser && adduser -u 1001 -S appuser -G appuser
RUN set -x apk update && apk add --no-cache curl git
RUN /usr/bin/curl -sL https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl -o /usr/bin/kubectl && chmod +x /usr/bin/kubectl
#USER appuser
ENTRYPOINT ["/bin/sh","-c"]
