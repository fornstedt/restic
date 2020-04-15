# restic
Handle Restic backups with BackBlaze

## Prerequisites
* Installation is based on Ubuntu 18.04
* Restic installed with snap

## Installation

1. Clone repository
> cd /usr/local/sbin<br/>
> git clone https://github.com/eric1980/restic

2. Add symbolic link to cron
> sudo ln -s /usr/local/sbin/restic/cronjob/raid-backup /etc/cron/daily/raid-backup

3. Create password file
> echo "your-restic-password" > /usr/local/sbin/restic/restic-pw-txt

4. Create folder file, one line for each folder you want to backup
> echo "/path/to/folder1" > /usr/local/sbin/restic/backup-folders.txt<br/>
> echo "/path/to/folder2" >> /usr/local/sbin/restic/backup-folders.txt<br/>
> ...
