#!/bin/bash
# modified from https://github.com/bitterjug/vim-notebook
NOTEFILE=$HOME/tasks/devjournal.md
COMMAND="call NoteAdd()"
nvim -c"$COMMAND" "$NOTEFILE" -c"$" +Wrap
