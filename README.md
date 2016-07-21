# docker-vpnc


installation:
- download the docker container (don't start it now, do the following steps first)
- add a startup-script for tun on your synology: open a ssh session to your synology as root, do a `cd /usr/syno/etc.defaults/rc.d`, then download `S01tun.sh` by doing a
`wget https://github.com/dsheyp/docker-vpnc/blob/master/S01tun.sh`
and make it executable by the following command:
`chmod +x /usr/syno/etc.defaults/rc.d/S01tun.sh`
- add a config file for vpnc on your synology: still in ssh session do a
`cd /volume1/homes/YOUR_SYNOLOGY_USERNAME`
, then download `vpn1.conf` by doing a
`wget https://github.com/dsheyp/docker-vpnc/blob/master/vpn1.conf`
and edit it to your needs by doing a
`vi vpn1.conf`
- start the docker container in privileged mode by doing a
`docker run --privileged --name vpnc -d -t --volume /volume1/homes:/homes --cap-add=NET_ADMIN dsheyp/docker-vpnc`
this method for starting the container is only needed the first time (as the synology ui does not allow the --privileged option), if you have to restart the container later, you can do this via the docker ui interface provided by your synology


using vpnc:
- in ssh console go into your docker container by doing a
`docker exec -it vpnc bash`
- in your docker container open a vpnc connection by doing
`vpnc /homes/YOUR_SYNOLOGY_USERNAME/vpn1.conf`
- create a mount point by doing
`mkdir -p /homes/YOUR_SYNOLOGY_USERNAME/CHOOSE_A_MOUNT_POINT_NAME`
- you can now mount a remote directory by doing
`mount.cifs //remote-server-name.remote-domain-name.com/REMOTE_DIRECTORY_NAME /homes/YOUR_SYNOLOGY_USERNAME/CHOOSE_A_MOUNT_POINT_NAME -o user=VPN_USERNAME,nounix,noserverino,iocharset=utf8`


    
    




