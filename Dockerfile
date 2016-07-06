FROM alpine:latest
MAINTAINER Don B. Stringham <donbstringham@gmail.com> @donbstringham

ADD serverless-hello /go/bin/main
ENTRYPOINT /go/bin/main
