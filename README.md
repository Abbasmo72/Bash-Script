<div align="center">

# Bash Script
<img src="https://cloud.githubusercontent.com/assets/2059754/24601246/753a7f36-1858-11e7-9d6b-7a0e64fb27f7.png" height="250px" width="250px">

</div>
<hr>

[Click to see the descriptions in Persian language](Persian.md)

<hr>
Bash scripting is a powerful tool for automating tasks in Linux and Unix-based systems, allowing system administrators and developers to streamline processes and improve productivity. It can automate system tasks like file management, backups, and monitoring resource usage, reducing repetitive work. Additionally, Bash is natively available, making it easy to learn and use, even for beginners. In software development, Bash scripts automate build, testing, and deployment processes, saving time and reducing errors. It's also useful in network and cybersecurity for monitoring, logging, and managing user permissions. Overall, Bash scripting increases efficiency, accuracy, and flexibility.
<hr>

## 1. Auto Ftp Upload
This Bash script uploads files from a local directory to an FTP server. It defines FTP server details (address, username, password, and target directory), sets the local directory path, and specifies a log file. The upload_files function connects to the FTP server and uploads all files non-interactively using the ftp command, logging the process to the log file.

View the code <b>[Bash Script Code](BashScript/AutoFtpUpload/AutoFtpUploadEnglish.sh)</b>.
<hr>

## 2. Check Internet
This bash script checks internet connectivity by pinging "google.com." It stores the target URL in the TARGET variable, uses the ping command to test the connection, and directs output to /dev/null. The script then checks the return code ($?): if it's zero, it prints "You are connected to the internet"; otherwise, it shows "You are not connected to the internet." It's a simple way to verify internet connection on Unix-based systems.

View the code <b>[Bash Script Code](BashScript/CheckInternet/CheckInternetEnglish.sh)</b>.
<hr>

## 3. Cleanup Temp Cache
This bash script cleans various system caches and files. It defines three functions: clean_temp_files removes files in the /tmp directory, clean_system_cache clears the system's memory cache, and clean_user_cache deletes files from the user's ~/.cache directory. The script runs these functions in sequence, printing messages before and after each process, and ends with "Cleanup complete."

View the code <b>[Bash Script Code](BashScript/CleanupTempCache/cleanupTempCacheEnglish.sh)</b>.
<hr>

## 4. Disk Space Alert
This bash script monitors disk usage and sends an email alert if the usage exceeds 80%. It checks the root partition’s usage using df, processes the output with awk and sed, and compares it to the threshold. If the usage is high, it sends an email warning; otherwise, it prints the current disk usage. This helps automate disk space monitoring and alerts the user when action is needed.

View the code <b>[Bash Script Code](BashScript/DiskSpaceAlert/DiskSpaceAlertEnglish.sh)</b>.
<hr>

## 5. Linux Details
This bash script provides system-related information: the number of online users (using who and wc -l), the user groups for each logged-in user (with who and groups), the Linux version (using lsb_release -a), and the system's uptime (using uptime -p). It’s useful for quickly checking system status and user details.

View the code <b>[Bash Script Code](BashScript/LinuxDetails/LinuxDetailsEnglish.sh)</b>.
<hr>

## 6. View Sys log
This Bash script checks if the user has root access and displays the last 30 lines of a system log file. It verifies root privileges, checks if the log file exists (default: /var/log/syslog), and uses the tail command to show the last 30 lines. If the user lacks root access or the file doesn't exist, it shows an error and exits. It's a quick tool for system administrators to monitor recent events.

View the code <b>[Bash Script Code](BashScript/ViewSyslog/ViewSyslogEnglish.sh)</b>.
<hr>

## 7. WhereIP
This Bash script takes an IP address as input and retrieves its geographical information. It first checks if the jq tool is installed, then queries the ip-api.com API to fetch location data. If the request is successful, it prints the city, region, and country of the given IP address.

View the code <b>[Bash Script Code](BashScript/whereIP/whereIPEnglish.sh)</b>.
<hr>

## 8. Weather
This script fetches weather information from wttr.in. If the -l option is provided with a location, it displays the weather for that location; otherwise, it shows the default weather. The -h option displays the script usage guide.

View the code <b>[Bash Script Code](BashScript/Weather/WeatherEnglish.sh)</b>.
<hr>

## License

MIT
