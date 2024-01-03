# Tmux rootless installation
Basically we need to compile Tmux. There are few dependencies, everything is figured out in the `tmux_htop_local_install.sh` file.

Once the program is installed. Just export the tmux's executable location to the `PATH` so Linux can find the executable. On a SLURM system we can add this to `.myenv` instead of `.bashrc`.

# Tmux basic controls
* Prefix key : `CTRL + B`
* List of all sessions : `CTRL + B` `s`
* List of all windows, sessions and panes (use this) : `CTRL + B` `w`
* Kill a pane : `CTRL + B` `x` `y`

## Window controls
* New window : `CTRL + B` `c`
* Switch window : `CTRL + B` `n`
* Detach a session : `CTRL + B` `d`
* Rename the current window : `CTRL + B` `,`

## Panes
* New horizontal pane : `CTRL + B` `%`
* New vertical pane : `CTRL + B` `"`
* Switch between panes (be fast) : `CTRL + B` `arrow keys`
* Switch to a pane number 4 (be fast) : `CTRL + B` `Q` `4`
* Change size of current pane : `CTRL + B` `CTRL` `arrow keys`

## Tmux commands
* Attach to latest session : `tmux a`
* New session with a name: `tmux new -s coding`
* Open/ Target tmux session zero : `tmux a -t backups`
* Kill a session with name : `tmux kill-session -t coding`
* Kill everything : `tmux kill-server`