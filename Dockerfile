# New instance of openjdk to run the server
FROM adoptopenjdk:11.0.8_10-jre-hotspot-bionic

# Defining Spigot Version
# ENV SPIGOT_VERSION=1.16.4

# Creating new dir for the server contents
WORKDIR /server

# Copying the contents from the data dir into server. /data/ holds all of the server data.
COPY data/ .

# Exposing the default minecraft server port.
EXPOSE 25565

# Starting the server.
CMD ["java", "-Xms1024M", "-Xmx2048M", "-Darg.get.rcon.password=testPassword", "-Dfile.encoding=UTF-8", "-jar", "spigot-1.16.4.jar", "nogui"]
