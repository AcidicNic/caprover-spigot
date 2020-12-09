# Minecarft (Spigot) Server 1.16.4
IP: mc.dev.nicc.io
docker build -t spigot .
docker run -d -v your/local/path/to/data/folder:/server -p 25565:25565 --name="minecraft" spigot

/data/ is the folder that contains spigot.jar, this is where you want the server to run.
