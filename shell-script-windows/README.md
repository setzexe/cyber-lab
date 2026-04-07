# Shell Scripts

This folder contains small helper scripts to help with Git Bash workflow. These scripts are meant to remove repetitive typing while you work in this repo. However, these scripts can also be applied to general Git Bash work. Each script has comments provided for extra information.

The only script that requires some manual tinkering with the code itself prior to usage is **access.sh**.

## Update 4/7/26

I have switched OS's for the device that I create this repo on. These scripts work on Windows as opposed to Ubuntu. Due to this, this will be kept as it's own folder and will no longer be updated. For shell scripts for Linux, please look at the respective subfolder.

## Use Scripts Like Real Commands

1. Create a personal bin folder

    mkdir -p "$HOME/bin"

2. Copy scripts into it command-style names.
The process is the same for every script, but we will use access here.

    cp access.sh "$HOME/bin/access"

3. Make the script executable

    chmod +x "$HOME/bin/access"

4. Add ~/bin to PATH

    grep -qxF 'export PATH="$HOME/bin:$PATH"' "$HOME/.bashrc" || echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"

5. Reload shell configuration

    source "$HOME/.bashrc"

Now you can do:

    access
    access /path/to/project
    commit "your commit message"

