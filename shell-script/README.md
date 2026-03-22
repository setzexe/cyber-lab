# Shell Scripts

This folder contains small helper scripts to help with Git Bash workflow. These scripts are meant to remove repetitive typing while you work in this repo. However, these scripts can also be applied to general Git Bash work. Each script has comments provided for extra information.

The only script that requires some manual tinkering with the code itself prior to usage is **access.sh**.

## Use Scripts Like Real Commands

1. Create a personal bin folder

    mkdir -p "$HOME/bin"

2. Copy scripts into it command-style names. 
The process is the same for every script, but we will use fixpath here.

    cp fixpath.sh "$HOME/bin/fixpath"

3. Make the script executable

    chmod +x "$HOME/bin/fixpath"

4. Add ~/bin to PATH

    grep -qxF 'export PATH="$HOME/bin:$PATH"' "$HOME/.bashrc" || echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"

5. Reload shell configuration

    source "$HOME/.bashrc"

Now you can do (based on what scripts you created):

    access
    commit "your commit message"
    fixpath "C:/your/path"

