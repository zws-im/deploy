FROM restic/restic:0.12.1

RUN apk add --no-cache postgresql=13.2-r0 apk-cron=1.0-r3

COPY backup.ash crontab.txt /

RUN ["crontab", "/crontab.txt"]

ENTRYPOINT ["crond", "-f", "-l", "0"]
