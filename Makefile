# Компіляція для Linux
linux:
    GOOS=linux GOARCH=amd64 go build -o myapp-linux-amd64

# Компіляція для ARM
arm:
    GOOS=linux GOARCH=arm go build -o myapp-linux-arm

# Компіляція для macOS
macos:
    GOOS=darwin GOARCH=amd64 go build -o myapp-darwin-amd64

# Компіляція для Windows
windows:
    GOOS=windows GOARCH=amd64 go build -o myapp-windows-amd64.exe

clean:
    docker rmi <IMAGE_TAG>
