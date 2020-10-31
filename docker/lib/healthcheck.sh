#!/bin/bash
# Adds Hourly Healthcheck to crontab
echo \n0 1 *   *   *   curl -fsS -m 10 --retry 5 -o /dev/null $HCIO_URL >> /etc/crontab
