FROM alpine

# Create a directory for our backup script
RUN mkdir /backup

RUN apk add --no-cache busybox-suid rsync openssh

# Copy our backup script and the cron file into the container
COPY backup.sh /backup/backup.sh
COPY cron /etc/crontabs/root

# Set the working directory to our backup directory
WORKDIR /backup

# Define a volume that we want to back up
VOLUME /data

# Define a volume to add secrets to
VOLUME /secrets

# Run the cron daemon
CMD ["crond", "-f", "-d", "8"]