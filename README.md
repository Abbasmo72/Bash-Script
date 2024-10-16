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

### Dependencies:
Before using a Bash script, there are a few dependencies to consider:

1. Bash Shell:
  Bash is the default shell in most Linux distributions and macOS, so it's typically available out-of-the-box. To check the Bash version on your system, use:
  ```bash
bash --version
```
2. System Utilities:
  Many Bash scripts rely on Unix utilities like grep, awk, sed, ls, and df. These utilities are pre-installed on most systems, but some scripts might require installing additional tools.For example, if you're writing a script to send emails, you'll need to install mailutils:
  ```bash
sudo apt install mailutils  # For Ubuntu/Debian
sudo yum install mailx      # For CentOS/RHEL
```
3. File Permissions:
  For a Bash script to execute, it must have execute permissions. This can be set with the chmod command:
 ```bash
chmod +x script.sh
```
### How Bash Scripts Work:
1. Script Structure:
  A Bash script starts with the shebang line #!/bin/bash, which tells the system that the script should be executed with the Bash shell. Without the shebang, the script may not execute     correctly, especially if it's run in a different shell environment.
2. Variables:
  Variables are used to store data. In Bash, variables can store strings, numbers, or command output:
 ```bash
name="John"
echo "Hello, $name"
```
  You can also capture command outputs into variables:
 ```bash
current_date=$(date)
echo "Today's date is: $current_date"
```
3. Control Flow (if/else, loops):
   Bash supports control flow structures such as if-else statements and loops. These are crucial for decision-making and repeating tasks within scripts.
   Example: Checking disk space:
```bash
if [ $(df / | grep / | awk '{print $5}' | sed 's/%//g') -gt 80 ]; then
    echo "Disk space is running low!"
fi
```
  Example: Looping through files:
```bash
for file in *.txt; do
    echo "Processing $file"
done
```
4. Functions:
   Functions allow you to encapsulate a series of commands into a reusable block, making your scripts more modular and readable.
```bash
greet() {
    echo "Hello, $1!"
}

greet "Alice"
```
5. Error Handling:
  Bash has built-in mechanisms for error handling using exit statuses. Every command returns an exit status, where 0 means success and non-zero indicates failure. You can capture these statuses and handle errors gracefully:
```bash
if [ $? -ne 0 ]; then
    echo "Command failed"
    exit 1
fi
```
6. Input and Output:
  Bash scripts can accept user input using the read command, and output can be written to files using redirection (> for overwrite, >> for append):
```bash
read -p "Enter your name: " user_name
echo "Welcome, $user_name!" > welcome.txt
```
7. Scheduling with Cron:
  To run a Bash script automatically at specific times, you can use cron. For example, to run a backup script every day at 2 AM, add it to crontab:
```bash
0 2 * * * /path/to/backup_script.sh
```
### Key Advantages of Bash Scripts:

1. Ease of Use:
  Bash scripting is relatively easy to learn, especially for those familiar with the Unix/Linux command line. It allows quick automation of everyday tasks without the need for complex     programming languages.

2. Portability:
  Bash scripts are portable across different Unix-based systems. As long as the system supports Bash, the same script can run on different Linux distributions or macOS without       modification.

3. Efficiency:
  Automating tasks with Bash can save time and reduce human error, particularly for repetitive tasks like system updates, backups, and server monitoring.

4.Integration with Other Tools:
  Bash scripts can easily integrate with other programming languages, tools, or system commands, making it a flexible tool for both simple and complex tasks.

## Conclusion:
Bash scripting is an indispensable tool for anyone working with Unix-based systems. Whether you're a system administrator managing resources, a developer automating tests, or a DevOps engineer maintaining pipelines, Bash scripting can significantly improve efficiency. With a combination of built-in commands, loops, and control flow, you can automate almost any task, saving time and minimizing errors. Understanding the basics of Bash and knowing how to leverage its power is essential for working in Linux environments.



  
</details>


## Bash Scripts

1. [linux_details.sh](Script/linux_details.sh): This Bash script displays the number of online users, their access groups, the Linux version, and the system's uptime. It uses commands like who, groups, lsb_release, and uptime to gather and present this information in a readable format.

<details>
<summary>More information</summary>

</details>
<hr>

2. [check_internet.sh](Script/check_internet.sh): This Bash script checks internet connectivity by pinging Google's server (google.com). If the ping is successful, it prints "You are connected to the internet"; otherwise, it prints "You are not connected to the internet."
<details>
<summary>More information</summary>

</details>
<hr>

3. [auto_ftp_upload.sh](Script/auto_ftp_upload.sh):This script automates the process of uploading files from a local directory to a specified FTP server. It connects to the FTP server using the provided credentials, uploads all files from the local directory, and logs the process in a log file for tracking purposes.
<details>
<summary>More information</summary>

</details>
<hr>

4. [cleanup_temp_cache.sh](Script/cleanup_temp_cache.sh):This script removes temporary files from /tmp, clears the system cache, and deletes user-specific cache files in ~/.cache. It helps free up space and improve system performance by cleaning unnecessary files and caches.
<details>
<summary>More information</summary>

</details>
<hr>


## License

MIT
