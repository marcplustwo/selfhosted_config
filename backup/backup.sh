#! /bin/sh

echo Start update $(date)

rsync -e "ssh -o StrictHostKeyChecking=no -i /secrets/.ssh/id_ed25519 -p23" \
  -aAXH \
  --info=progress2 \
  --delete \
  /data $BACKUP_TARGET

echo Finish update $(date)