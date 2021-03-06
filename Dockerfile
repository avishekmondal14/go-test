FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

# COPY *.go ./

COPY . .

# RUN go build -o /docker-ikta

EXPOSE 3000

# CMD [ "/docker-ikta" ]

CMD ["go","run","main.go"]