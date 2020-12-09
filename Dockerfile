# New instance of openjdk to run the server
FROM adoptopenjdk:11.0.8_10-jre-hotspot-bionic

# /server should contain spigot.jar
VOLUME ["/server"]
WORKDIR /server

# Exposing the default minecraft server port.
EXPOSE 25565/udp
EXPOSE 25565/tcp

# RCON port (disabled for now).
# EXPOSE 25575

# Starting the server.
ENTRYPOINT ["java", "-Xms1024M", "-Xmx2048M", "-Dfile.encoding=UTF-8", "-jar", "spigot.jar", "nogui"]
