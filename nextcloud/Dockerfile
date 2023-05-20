FROM nextcloud

RUN apt-get update && apt-get install -y \
    supervisor \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir /var/log/supervisord /var/run/supervisord

COPY supervisord.conf /

RUN echo '0 3 * * * /usr/local/bin/php /var/www/nextcloud/occ preview:pre-generate' >> /var/spool/cron/crontabs/www-data 

ENV NEXTCLOUD_UPDATE=1

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]