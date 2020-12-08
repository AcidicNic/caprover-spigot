# Minecarft (Spigot) Server 1.16.4
IP: mc.dev.nicc.io
docker build -t spigot .
docker run -d -v your/local/path/to/server/folder:/server -p 25565:25565 --name="minecraft" spigot

/server is the folder that contains spigot.jar
