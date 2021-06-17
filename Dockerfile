FROM golang AS compile

ENV CGO_ENABLED=0

WORKDIR /workdir

COPY main.go /workdir/main.go

RUN go build main.go



FROM alpine

USER 1001

WORKDIR /app-root

COPY --chown=1001:1001 --from=compile /workdir/main /app-root/

ENTRYPOINT [ "/app-root/main" ]
