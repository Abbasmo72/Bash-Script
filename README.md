<div align="center">

# Bash Script
<img src="https://cloud.githubusercontent.com/assets/2059754/24601246/753a7f36-1858-11e7-9d6b-7a0e64fb27f7.png" height="250px" width="250px">

</div>
<hr>

[Click to see the descriptions in Persian language](Persian.md)

<b>Notice:</b> <b>Each section has a README file in English and Farsi in its respective file. By clicking on the links of each section, you can learn more in-depth information about the code and its function.
<hr>
Bash scripting is a powerful tool for automating tasks in Linux and Unix-based systems, allowing system administrators and developers to streamline processes and improve productivity. It can automate system tasks like file management, backups, and monitoring resource usage, reducing repetitive work. Additionally, Bash is natively available, making it easy to learn and use, even for beginners. In software development, Bash scripts automate build, testing, and deployment processes, saving time and reducing errors. It's also useful in network and cybersecurity for monitoring, logging, and managing user permissions. Overall, Bash scripting increases efficiency, accuracy, and flexibility.
<hr>

## 1. Auto Ftp Upload
This Bash script is designed to upload files from a local directory to an FTP server. It first defines the necessary FTP server details, including the server address, username, password, and the target directory on the server where files will be uploaded. Next, it sets the path to the local directory containing files for upload and specifies a log file to store the upload status. The upload_files function is used to connect to the server and upload the files. This function connects to the server non-interactively using the ftp command, navigates to the specified directory on the server, and uploads all files from the local directory. Finally, the script logs the upload process to the specified log file.

View the code <b>[Bash Script Code](BashScript/AutoFtpUpload/AutoFtpUploadEnglish.sh)</b>.
<hr>

## 2. Check Internet
This bash script is designed to check the internet connection status. Initially, the website address to be used for testing the connection (in this case, "google.com") is stored in a variable called TARGET. Then, the ping command is used to send a ping request to the specified website, and its output is directed to /dev/null to only check the command's execution status. Next, by checking the return code ($?), the script determines whether the ping was successful or not. If the return code is zero (indicating success), the message "You are connected to the internet" is printed; otherwise, the message "You are not connected to the internet" will be displayed. This simple script can be used to check the internet connection status on Unix-based systems. This bash script is designed to check the internet connection status. Initially, the website address to be used for testing the connection (in this case, "google.com") is stored in a variable called TARGET. Then, the ping command is used to send a ping request to the specified website, and its output is directed to /dev/null to only check the command's execution status. Next, by checking the return code ($?), the script determines whether the ping was successful or not. If the return code is zero (indicating success), the message "You are connected to the internet" is printed; otherwise, the message "You are not connected to the internet" will be displayed. This simple script can be used to check the internet connection status on Unix-based systems.

View the code <b>[Bash Script Code](BashScript/CheckInternet/CheckInternetEnglish.sh)</b>.
<hr>

## 3. Cleanup Temp Cache
This bash script is designed to clean various types of files and caches on a system. It defines three functions: clean_temp_files removes all files in the /tmp directory, typically used for temporary storage; clean_system_cache clears the system's memory cache by instructing the kernel to drop cached data, dentries, and inodes; and clean_user_cache deletes files from the user's cache directory (usually located at ~/.cache), including browser cache and application-specific files. After defining these functions, the script runs them in sequence, printing messages before and after each cleaning process. Finally, it outputs "Cleanup complete" to indicate the script has finished.

View the code <b>[Bash Script Code](BashScript/CleanupTempCache/cleanupTempCacheEnglish.sh)</b>.
<hr>

## 4. Disk Space Alert
This bash script monitors disk usage and sends an email alert if the disk usage exceeds a specified threshold. The threshold is set to 80% in this example. It first retrieves the disk usage percentage of the root partition (/) using the df command and processes the output with awk and sed to extract the percentage value. The script then compares the disk usage with the threshold. If the usage exceeds the threshold, it composes an email body with a warning message and sends it to a specified email address using the mail command. If the disk usage is under control, it prints a message indicating the current disk usage. The script helps automate disk space monitoring and alerts the user when intervention is needed.

View the code <b>[Bash Script Code](BashScript/DiskSpaceAlert/DiskSpaceAlertEnglish.sh)</b>.
<hr>

## 5. Linux Details
This bash script provides various system-related information. It first outputs the number of online users by using the who command to list logged-in users and wc -l to count them. Next, it displays the access types (user groups) for each logged-in user. The who command lists users, and for each user, the groups command is used to fetch the groups they belong to. The script then displays the Linux version by running lsb_release -a, which provides detailed information about the distribution. Finally, the script shows the system's uptime using the uptime -p command, which prints how long the system has been running. This script is useful for quickly checking system status and user details.

View the code <b>[Bash Script Code](BashScript/LinuxDetails/LinuxDetailsEnglish.sh)</b>.
<hr>

## 6. View Sys log
This Bash script is designed to check user privileges and display the recent lines of a system log file. It first verifies whether the user has root access; if not, an error message is displayed, and the execution stops. The log file path is stored in the LOG_FILE variable, with the default set to /var/log/syslog. It then checks for the existence of the log file, and if the file is not found, an appropriate message is shown, and the script exits. If the file exists, the script uses the tail command to display the last 30 lines of the log. This simple and quick tool is intended for system administrators to monitor and troubleshoot recent system events efficiently.

View the code <b>[Bash Script Code](BashScript/ViewSyslog/ViewSyslogEnglish.sh)</b>.
<hr>

## 7. WhereIP
This Bash script takes an IP address as input and retrieves its geographical information. It first checks if the jq tool is installed, then queries the ip-api.com API to fetch location data. If the request is successful, it prints the city, region, and country of the given IP address.

View the code <b>[Bash Script Code](BashScript/whereIP/whereIPEnglish.sh)</b>.
<hr>

## License

MIT
