## tmux-template

This repository is a tmux configuration template designed for personal use. It includes a script (`ide.sh`) that sets up a tmux session with multiple panes and is intended to be used as a simple IDE.

## Features

This repository provides a simple `ide.sh` script that sets up a tmux session with multiple panes. The script splits the current tmux window horizontally and creates four vertical panes. The script then arranges the panes vertically and resizes them to the appropriate dimensions.

## Requirement

To use this repository, you must have `tmux` installed on your machine.

## Install

To install this repository, follow these steps:

1. Clone the repository to your machine:

   ```
   git clone https://github.com/RyuichiHashimoto/tmux-template.git
   ```

2. Copy the `.tmux.conf` file from the repository to your home directory:

   ```
   cp tmux-template/.tmux.conf ~/.tmux.conf
   ```

3. Edit the `.tmux.conf` file as necessary:

   ```
   vi ~/.tmux.conf
   ```

The `.tmux.conf` file is now configured and will be used by the `tmux` command.

## Usage

To use the `tmux_setup.sh` script, follow these steps:

1. Open a terminal window and start a new tmux session by running the following command:

   ```
   tmux new-session -s <session_name>
   ```

2. Once you are inside the tmux session, run the following command to start the IDE:

   ```
   ./tmux_setup.sh
   ```

This will split the current tmux window horizontally and create four vertical panes. The script then arranges the panes vertically and resizes them to the appropriate dimensions.

## Author

This repository was created by Ryuichi Hashimoto.

## REFERECE 

- [tmux tutorial (japanese)](https://www.tohoho-web.com/ex/tmux.html)
- [How to set up a development environment using tmux (japanese)](https://dev.classmethod.jp/articles/tmux_create_devenv_display/)
