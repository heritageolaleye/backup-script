This is a simple bash script that helps to create backups of files from a source directory and sync them to a remote server. It uses `tar` to compress the files and `rsync` to sync them to the remote server.

## Requirements

- Linux or macOS operating system
- `tar` and `rsync` installed

## Setup

1. Clone the repository:

```bash
git clone https://github.com/username/repo.git
```

2. Modify the script variables:

- `source_dir`: The directory containing the files you want to backup.
- `dest_dir`: The destination directory where the backups will be stored.
- `dest_server`: The remote server where the backups will be synced to.

3. Make the script executable:

```bash
chmod +x backup.sh
```

## Usage

To create a backup and sync it to the remote server, run the script:

```bash
./backup.sh
```

The script will create a new directory in the destination directory if it does not exist. Then, it will compress the files from the source directory using `tar` and save the compressed file in the destination directory with the backup date appended to the filename.

Finally, it will sync the destination directory to the remote server using `rsync`.

## Caution

Please ensure that you have the necessary permissions and access rights to the source directory, destination directory, and remote server. Also, make sure to test the script thoroughly before using it in a production environment.

