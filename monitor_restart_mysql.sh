#!/bin/bash
# Restart the MySQL service if it's not running.
if [ $? != 0 ]; then
    echo -e $(date): "MySQL Service was down. Restarting now...\n"
    sudo service mysql restart
else
    echo -e $(date): "MySQL Service is running already. Nothing to do here.\n"
fi
