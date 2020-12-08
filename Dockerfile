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

# RCON port (disabled for now).
# EXPOSE 25575

# Starting the server.
CMD ["java", "-Xms1024M", "-Xmx2048M", "-Dfile.encoding=UTF-8", "-jar", "spigot-1.16.4.jar", "nogui"]

# I don't know why, but when I changed the CMD above to ENTRYPOINT and added
# This empty CMD, it lets me use docker commands when I ssh into my sever so I
# can attach to the container so I can run cmds directly on the server console.
# CMD [""]
