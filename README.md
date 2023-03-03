# Wave Server

My new dockerized server setup.

Includes nextcloud with mariadb and redis cache and automated backups to remote ftp-server.


```
.
├── backup
│   ├── backup.sh                 # backup script
│   ├── cron                      # cron file that calls backup script at regular intervals
│   └── Dockerfile                # defines custom docker image
├── data                          # data from services
│   ├── db
│   ├── letsencrypt
│   └── nextcloud
├── docker-compose-backup.yml
├── docker-compose-nextcloud.yml
├── docker-compose-traefik.yml
├── .env                          # config
├── .ssh
│   ├── id_ed25519                # ssh private key for connection to backup server
│   └── id_ed25519.pub            # public key needs to be registered to .ssh/authorized_keys on backup server
└── start-services.sh             # call to build and run services in one command
```

sample ´.env´

```
# traefik
CERT_EMAIL=

# nextcloud
# For nextcloud db
NEXTCLOUD_URL=
MYSQL_PASSWORD=
MYSQL_ROOT_PASSWORD=

# backup
BACKUP_TARGET=user@host:backup_directory/
```