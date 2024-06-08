#!/bin/bash

kitty @ set-spacing padding-left=0 padding-top=0 padding-right=0 padding-bottom=0
/opt/nvim/bin/nvim "$@"
kitty @ set-spacing padding=12 padding-top=12 padding-right=12 padding-bottom=12
