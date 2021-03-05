#FROM golang:latest AS build

#ARG CGO_ENABLED=0

#WORKDIR /workdir

#COPY main.go .

#RUN go build main.go

FROM alpine:latest

#COPY --from=build /workdir/main /main

ENTRYPOINT [ "/main" ]
