# Minecarft (Spigot) Server 1.16.4
IP: mc.dev.nicc.io
docker build -t spigot .
docker run -d -v path/to/server/location:/server -p 25565:25565 --name="minecraft" spigot

path/to/server/location should be wherever you want your server to end up.
/data in the same dir as the Dockerfile should contain spigot.jar
