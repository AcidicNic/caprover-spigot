FROM adoptopenjdk:11.0.8_10-jre-hotspot-bionic AS builder

# Defining Spigot Version
ENV SPIGOT_VERSION=1.16.2

# Creating dir for building the project
WORKDIR /build

# Downloading build tools
RUN apt-get update && apt-get install -y curl git \
    && curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar \
    && java -Xmx2048M -jar BuildTools.jar --rev $SPIGOT_VERSION --compile SPIGOT \
    && mv spigot-$SPIGOT_VERSION.jar spigot.jar \
    && rm -rf /var/lib/apt/lists/*

# New instance of openjdk to run the server
FROM adoptopenjdk:11.0.8_10-jre-hotspot-bionic

# Creating new dir for the server contents
WORKDIR /server

# Copying spigot.jar (the file that actually starts the server), to the server dir.
COPY --from=builder /build/spigot.jar /opt/spigot/

# Copying the contents from the data dir into server. /data/ holds server.properties and plugins.
COPY data/ .

# Exposing the default minecraft server port.
EXPOSE 25565

# Starting the server.
CMD ["java", "-Xms1024M", "-Xmx2048M", "-Dcom.mojang.eula.agree=true", "-Dfile.encoding=UTF-8", "-jar", "/opt/spigot/spigot.jar", "nogui"]
