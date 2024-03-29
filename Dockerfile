FROM public.ecr.aws/docker/library/golang:1.20
WORKDIR /app
COPY . .
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build  -o /out/main ./
EXPOSE 3000
ENTRYPOINT ["/out/main"]
