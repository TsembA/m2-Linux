## 🖥️ Operating Systems & Linux Basics

### 🧱 Virtualization & Virtual Machines

Virtualization is the process of creating a software-based ("virtual") version of a computer, with dedicated CPU, memory, and storage borrowed from a physical host machine.

💡 **Key Points:**
- Any OS can run on top of any other physical host.
- The VM is isolated from the host system.

👥 **Hypervisors:**
- **Type 1 (Bare Metal):** Installed directly on hardware (e.g., for servers).
- **Type 2 (Hosted):** Installed on host OS (e.g., for personal experimentation).

🎯 **Benefits:**
- Type 2: Safe testing, learning without affecting main OS.
- Type 1: Better performance, snapshot support, abstracted hardware.

---

### 📂 Linux File System

Everything in Linux is a file. Root users have their own home directories depending on the OS (e.g., `/Users/username` in macOS).

#### 🗂️ Folder Structure
- `/home/{username}` – User home directories
- `/bin` – Essential command binaries
- `/sbin` – System binaries (needs sudo)
- `/lib` – Shared libraries
- `/usr` – Historically user home dir
- `/usr/local` – User-installed programs
- `/opt` – Optional software
- `/boot` – Boot loader files
- `/etc` – Configuration files
- `/dev` – Device files (webcam, keyboard)
- `/var` – Logs
- `/tmp` – Temporary files
- `/media`, `/mnt` – Mount points

📁 Hidden files begin with a `.`

---

### 🛠️ Basic Linux Commands

```bash
pwd                  # Current directory
ls                   # List contents
cd                   # Change directory
mkdir <dir>          # Make directory
touch <file>         # Create file
rm <file>            # Delete file
rm -r <dir>          # Delete non-empty directory
rmdir <dir>          # Delete empty directory
clear                # Clear terminal
mv old new           # Rename or move file
cp -r src dst        # Copy directory
ls -R                # Recursive listing
ls -a                # Show hidden files
ls -l                # Long format
cat <file>           # Show file contents
uname -a             # System/kernel info
cat /etc/os-release  # OS release version
lscpu                # CPU info
lsmem                # Memory info
sudo <cmd>           # Superuser privileges
su - <user>          # Switch user
```

🔧 **Pipes, Redirects & History**
```bash
|        # Pipe output to next command
<cmd> | less      # Pager display
<cmd> | grep xyz  # Filter by pattern
> file            # Redirect output to file (overwrite)
>> file           # Append output to file
;                 # Run multiple commands in one line
history           # Command history
```

---

### 📦 APT Package Manager

APT handles package installation, dependency resolution, and integrity.

```bash
apt search <package>       # Search package
apt install <package>      # Install package
apt remove <package>       # Remove package
apt update                 # Update package list
apt upgrade                # Upgrade packages
apt autoremove             # Remove unused packages
apt full-upgrade           # Full upgrade
```

---

### 👤 Users, Groups & Permissions

👥 **User Types:**
- Root user
- Regular user
- Service user (e.g., for Docker/Nexus)

Users can belong to multiple groups. Groups manage collective permissions.

#### 🧑‍💻 User & Group Management
```bash
adduser <user>
passwd <user>
su - <user>
groupadd <group>
deluser <user>
groupdel <group>
usermod -g <group> <user>        # Set primary group
usermod -G <group> <user>        # Override secondary groups
usermod -aG <group> <user>       # Append to groups
gpasswd -d <user> <group>        # Remove user from group
groups <user>
exit                             # Logout
```

#### 🗝️ File Ownership & Permissions
```bash
chown user:group <file>    # Change file owner
group <file>               # Change file group
```

🔐 **Permissions Reference:**
- `r` = read
- `w` = write
- `x` = execute
- `-` = no permission

👤 Owner | 👥 Group | 🌍 Others

#### 🔒 chmod Examples
```bash
chmod -x <file>         # Remove execute for all
chmod g-w <file>        # Remove write for group
chmod g+x <file>        # Add execute for group
chmod u+x <file>        # Add execute for user
chmod o+x <file>        # Add execute for others
chmod g=rwx <file>      # Set exact permissions for group
chmod 777 <file>        # Full permission to everyone (⚠️ caution!)
```

---

