# MySqlAutoRestart
This script will auto restart your application within a minute if mysql down.

# Follow the below steps
1. Connect your terminal
2. Create a new directory "/home/scripts"
3. cd /home/scripts
4. Create a new bash file ``Sudo nano monitor_restart_mysql.sh``
5. Change permission of above file ``chmod +x monitor_restart_mysql.sh``
6. Paste the below code or copy from  monitor_restart_mysql.sh

#Code
```
#!/bin/bash
# Restart the MySQL service if it's not running.
if [ $? != 0 ]; then
    echo -e $(date): "MySQL Service was down. Restarting now...\n"
    sudo service mysql restart
else
    echo -e $(date): "MySQL Service is running already. Nothing to do here.\n"
fi

```

7. Add a new cron with command ``sudo crontab -e``
8. And add below command
9. ```* * * * * /home/scripts/monitor_restart_mysql.sh  >> /home/scripts/script.log 2>&1```

