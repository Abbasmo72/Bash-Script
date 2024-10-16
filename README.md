<div align="center">

# Bash Script

<img src="https://cloud.githubusercontent.com/assets/2059754/24601246/753a7f36-1858-11e7-9d6b-7a0e64fb27f7.png" height="250px" width="250px">
</div>

# Summary of Bash Script

Bash scripting is a powerful tool for automating tasks in Unix-based operating systems such as Linux and macOS. A Bash script is essentially a sequence of commands written in the Bash shell, saved in a file with a .sh extension, that can be executed to perform various tasks. These scripts help automate repetitive tasks, manage system operations, and simplify complex processes like file manipulation, system monitoring, and software installation.

Bash scripting is versatile and supports conditional statements (if-else), loops (for, while), functions, and variables, allowing developers to build complex workflows. It's often used in system administration for tasks like backups, managing log files, and user account handling. Additionally, scripts can interact with other programs and commands, making them useful for tasks like network management, disk usage monitoring, or package installation.

Since Bash is typically pre-installed on most Unix-based systems, it's widely accessible and used across various fields, from development and DevOps to cybersecurity. Writing Bash scripts requires knowledge of the command-line interface and the ability to combine commands logically. It’s an essential skill for anyone working in system administration or Linux environments.
<details>
  
## <summary>About bash script</summary>
### What is Bash Scripting?
Bash scripting is a powerful way to automate tasks and manage system operations in Unix-based systems like Linux and macOS. A Bash script is essentially a sequence of shell commands that are saved in a file, typically with a .sh extension. When executed, the script runs all the commands in sequence, allowing users to automate repetitive tasks, create complex workflows, and manage system resources efficiently.
### Common Applications of Bash Scripts:
1. Automation:
  Bash scripts are widely used to automate repetitive tasks like file backups, server monitoring, and software deployment.

2. System Administration:
  System administrators use Bash scripts to manage user accounts, monitor disk usage, automate updates, and manage network configurations.

3. Data Processing:
  Bash scripts are also useful in processing text files, generating reports, and managing large datasets by leveraging Unix text processing commands like awk, sed, and grep.

4. DevOps and CI/CD Pipelines:
  Bash scripts play a vital role in DevOps pipelines for automating deployments, configuring environments, and running tests.

5. Task Scheduling:
  With tools like cron, Bash scripts can be scheduled to run at specific times or intervals, making them ideal for automated tasks like system maintenance, backups, or periodic checks.



</details>


## Bash Scripts

1. [linux_details.sh](Script/linux_details.sh): This Bash script displays the number of online users, their access groups, the Linux version, and the system's uptime. It uses commands like who, groups, lsb_release, and uptime to gather and present this information in a readable format.
<details>
<summary>More information</summary>

</details>

2. [check_internet.sh](Script/check_internet.sh): This Bash script checks internet connectivity by pinging Google's server (google.com). If the ping is successful, it prints "You are connected to the internet"; otherwise, it prints "You are not connected to the internet."
<details>
<summary>More information</summary>

</details>

3. [auto_ftp_upload.sh](Script/auto_ftp_upload.sh):This script automates the process of uploading files from a local directory to a specified FTP server. It connects to the FTP server using the provided credentials, uploads all files from the local directory, and logs the process in a log file for tracking purposes.
<details>
<summary>More information</summary>

</details>

4. [cleanup_temp_cache.sh](Script/cleanup_temp_cache.sh):This script removes temporary files from /tmp, clears the system cache, and deletes user-specific cache files in ~/.cache. It helps free up space and improve system performance by cleaning unnecessary files and caches.
<details>
<summary>More information</summary>

</details>


## License

MIT
