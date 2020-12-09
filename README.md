<h1 align="center">Docker Spigot Server</h1>
<p align="center">
    <a href="https://hub.docker.com/repository/docker/acidicnic/spigot" alt="Build Status">
        <img src="https://img.shields.io/docker/cloud/build/acidicnic/spigot?style=flat-square" /></a>
    <a href="https://hub.docker.com/repository/docker/acidicnic/spigot" alt="Automated Build">
        <img src="https://img.shields.io/docker/cloud/automated/acidicnic/spigot?style=flat-square" /></a>
    <a href="https://hub.docker.com/repository/docker/acidicnic/spigot" alt="Image Size">
        <img src="https://img.shields.io/docker/image-size/acidicnic/spigot?style=flat-square" /></a>
    <a href="https://mc.status.nicc.io" alt="Status">
        <img src="https://img.shields.io/uptimerobot/status/m786620369-7e34a09386fcad13dff45b57?style=flat-square" /></a>
    <a href="https://mc.status.nicc.io" alt="Uptime %">
        <img src="https://img.shields.io/uptimerobot/ratio/m786620369-7e34a09386fcad13dff45b57?style=flat-square" /></a>
</p>

<p align="center">
Server IP: <strong>mc.dev.nicc.io</strong> (Minecraft 1.16.4)<br>
Uptime Monitor: <strong><a href="https://mc.status.nicc.io/">mc.status.nicc.io</a></strong>
</p>

<hr>

### Docker Setup
- Make sure you have a folder called **/data** in the same directory as the Dockerfile. /data should contain spigot.jar.

```bash
docker build -t spigot .
docker run -d -v path/to/server/location:/server -p 25565:25565 --name="mc-server" spigot
```
- **-d** *is optional.* If you want to attach to your container's console immediately after running, don't include this.
- **-v path/to/server/location:/server** defines the volume location so you can edit your server files after the first launch.
    - **path/to/server/location** is where you want your server to end up on your host machine.
- **-p 25565:25565** binds the port 25565 on your container and host machine.
