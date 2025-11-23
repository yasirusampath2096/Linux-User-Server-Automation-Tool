# Linux Automation Tool

A complete Bash automation toolkit designed for system administration tasks such as creating, deleting, locking users, generating system reports, and setting up a web server. 

---

##  Project Overview

This project automates several core Linux sysadmin tasks:

* Bulk user creation
* User deletion
* User account locking
* System reporting
* Apache web server setup
* Logging for every action

All tasks are handled using clean, modular Bash scripts.

---

##  Project Structure
![Screenshot 2025-11-23 142532](https://github.com/user-attachments/assets/eee1e304-6154-4f6b-9ca1-4ea3eba8bfbc)

```




##  Requirements

* Linux OS (Ubuntu/Debian recommended)
* Sudo privileges
* Bash shell

---

##  Installation & Setup

Create the folder:

```bash
mkdir linux-automation-tool
cd linux-automation-tool
mkdir logs
```

Create **users.txt**:

```bash
nano users.txt
```

Add usernames (one per line):

```
yasiru
kamal
nimal
```

Make all scripts executable:

```bash
chmod +x *.sh
```

---

##  Script Details

###  1. **add_users.sh**

Creates users from the `users.txt` file, sets default passwords, expires passwords, and logs all activity.
Run:

```bash
sudo ./add_users.sh
```

###  2. **delete_users.sh**

Deletes users listed in `users.txt`.

```bash
sudo ./delete_users.sh
```

###  3. **lock_users.sh**

Locks user accounts (disables login).

```bash
sudo ./lock_users.sh
```

###  4. **user_report.sh**

Generates a simple system report including total users and currently logged-in users.

```bash
sudo ./user_report.sh
```

###  5. **setup_server.sh**

Installs and starts Apache web server.

```bash
sudo ./setup_server.sh
```

---

##  Logging System

Every script writes to a log file inside the `logs/` folder.
This helps with:

* Debugging
* Tracking changes
* Interview demonstrations

Example:

```
2025-11-22 15:30: Created user yasiru
```

---

##  Testing

After running scripts, verify using:

```bash
cat logs/add_users.log
id username
sudo systemctl status apache2
```






