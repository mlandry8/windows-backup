# Backup Scripts

Script for performing a mirrored Windows backup utilising Robocopy

***!!WARNING!!*** This script will delete files in the destination directories that do not exist in their respective source directory. Please ensure you have configured the `directory.txt` file correctly and test using the `--dry-run` flag

## Usage

### Setup

1. Clone to local machine
2. Rename `directories.txt.tmp` to `directories.txt`
3. Replace example source and dest directories in `directories.txt` with those you wish to backup. Use the following format:

```
<source_dir_1>,<dest_dir_1>
<source_dir_2>,<dest_dir_2>
````


### Running the Backup

Please first test a dry-run to ensure the backup functions as desired 
```sh
./backup.bat --dry-run
```

Finally you can run a live backup. 
```
./backup.bat
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.