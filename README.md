# Sxhkd Keybindings Configuration

## Reload/Quit - State/Flags - Focus/Swap - Preselect - Move/Resize

| Keyboard Shortcut            | Action                                                      |
| ---------------------------- | ----------------------------------------------------------- |
| `super + Escape`             | Reload the `sxhkd` configuration.                           |
| `super + alt + q`            | Quit `bspwm`.                                               |
| `super + alt + r`            | Restart `bspwm`.                                            |
| `super + w`                  | Close the current node.                                     |
| `super + shift + w`          | Force close the current node.                               |
| `super + m`                  | Toggle between tiled and monocle layout.                    |
| `super + y`                  | Send the newest marked node to the newest preselected node. |
| `super + g`                  | Swap the current node with the biggest window.              |
| `super + t`                  | Set the current node to tiled.                              |
| `super + shift + t`          | Set the current node to pseudo-tiled.                       |
| `super + s`                  | Set the current node to floating.                           |
| `super + f`                  | Set the current node to fullscreen.                         |
| `super + ctrl + m`           | Mark the current node.                                      |
| `super + ctrl + x`           | Lock the current node.                                      |
| `super + ctrl + y`           | Make the current node sticky.                               |
| `super + ctrl + z`           | Make the current node private.                              |
| `super + Left`               | Focus the node to the west.                                 |
| `super + Down`               | Focus the node to the south.                                |
| `super + Up`                 | Focus the node to the north.                                |
| `super + Right`              | Focus the node to the east.                                 |
| `super + shift + Left`       | Swap the current node with the node to the west.            |
| `super + shift + Down`       | Swap the current node with the node to the south.           |
| `super + shift + Up`         | Swap the current node with the node to the north.           |
| `super + shift + Right`      | Swap the current node with the node to the east.            |
| `super + p`                  | Focus the parent node.                                      |
| `super + b`                  | Focus the brother node.                                     |
| `super + comma`              | Focus the first node.                                       |
| `super + period`             | Focus the second node.                                      |
| `super + c`                  | Focus the next window in the current desktop.               |
| `super + shift + c`          | Focus the previous window in the current desktop.           |
| `super + bracketleft`        | Focus the previous desktop in the current monitor.          |
| `super + bracketright`       | Focus the next desktop in the current monitor.              |
| `super + grave`              | Focus the last node.                                        |
| `super + Tab`                | Focus the last desktop.                                     |
| `super + o`                  | Focus the older node in focus history.                      |
| `super + i`                  | Focus the newer node in focus history.                      |
| `super + 1-9`                | Focus desktop `1-9`.                                        |
| `super + shift + 1-9`        | Send the current node to desktop `1-9`.                     |
| `super + ctrl + alt + Left`  | Preselect west direction.                                   |
| `super + ctrl + alt + Down`  | Preselect south direction.                                  |
| `super + ctrl + alt + Up`    | Preselect north direction.                                  |
| `super + ctrl + alt + Right` | Preselect east direction.                                   |
| `super + ctrl + 1-9`         | Preselect ratio `0.1-0.9`.                                  |
| `super + ctrl + space`       | Cancel preselection for the focused node.                   |
| `super + ctrl + alt + space` | Cancel preselection for the focused desktop.                |
| `super + ctrl + Left`        | Move the floating node to the left.                         |
| `super + ctrl + Down`        | Move the floating node down.                                |
| `super + ctrl + Up`          | Move the floating node up.                                  |
| `super + ctrl + Right`       | Move the floating node to the right.                        |

## Custom Launchers

| Keyboard Shortcut     | Action                            |
| --------------------- | --------------------------------- |
| `super + shift + f`   | Launch Google Chrome.             |
| `super + Return`      | Launch Kitty (terminal emulator). |
| `super + d`           | Launch custom rofi script.        |
| `super + alt + Left`  | Resize window to the west.        |
| `super + alt + Down`  | Resize window to the south.       |
| `super + alt + Up`    | Resize window to the north.       |
| `super + alt + Right` | Resize window to the east.        |
| `@Print`              | Launch Flameshot GUI.             |