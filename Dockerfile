# Використовуємо базовий образ з альтернативного registry
FROM quay.io/projectquay/golang:1.20 AS builder

# Копіюємо код у контейнер
WORKDIR /app
COPY . .

# Компіляція для ARM
RUN GOOS=linux GOARCH=arm go build -o myapp-linux-arm

# Компіляція для macOS
RUN GOOS=darwin GOARCH=amd64 go build -o myapp-darwin-amd64

# Компіляція для Windows
RUN GOOS=windows GOARCH=amd64 go build -o myapp-windows-amd64.exe

# Видалення образів, які використовувались для збирання
FROM scratch
