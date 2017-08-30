# Ubuntu Config

This repository contains a copy of my configuration files for Ubuntu. This is to serve as a reference for others and as a backup for myself.

## Aliases

```bash
# List files with additional information 'ls -lhF'
lsl

# List all files (including hidden) with additional information 'ls -lhaF'
lsa

# Run update process 'sudo apt update && sudo apt upgrade -y;
sys-update

# Clear crash logs 'sudo rm /var/crash/*'
clear-crash-log
```

## User Prompt

Checks if [powerline-go](https://github.com/justjanne/powerline-go) is installed and adds it to the user prompt. If not detected, use a customized ANSI prompt.

## Sources

Checks if `~/.local/bin` exists and adds it to `$PATH` if true.

Checks if `~/.pirvate_keys` exists and sources the environment variables if true.
