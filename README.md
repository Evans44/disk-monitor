# Disk Monitor Script

This is a simple Bash script to monitor disk usage on Linux-based systems. It checks all mounted partitions and sends an alert if any partition exceeds a specified usage threshold.

## Features

- Monitors disk usage using df
- Sends email alerts when usage exceeds a specified percentage
- Lightweight and easy to modify
- Can be scheduled via cron for automation

## Usage

1. Clone the repository:

```bash
git clone https://github.com/Evans44/disk-monitor.git
cd disk-monitor

	2.	Edit the script:

Open monitor_disk.sh and set your desired threshold and email address:

THRESHOLD=80
EMAIL="your_email@example.com"

	3.	Make the script executable:

chmod +x monitor_disk.sh

	4.	Run the script:

./monitor_disk.sh

Automation (Optional)

To run the script periodically, add it to your crontab:

crontab -e

Add this line to run it every hour:

0 * * * * /path/to/monitor_disk.sh

Requirements

	•	Linux/Unix-based system
	•	mail command (mailutils or sendmail installed)
	•	Bash shell

License

MIT License

4. Save the file.