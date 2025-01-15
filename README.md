# foobacca-note

devjournal extension for neovim

## Dev Journal

With the bundled shell script and an alias you can type `n` and open your journal with a new date and timestamp at the end of the file.  To set that up:

- decide where you want to store your dev journal file.  Create it (and any directories needed to hold it).  The default in the shell script is `$HOME/tasks/devjournal.md`
- put `bin/note.sh` in `$HOME/bin/` (or somewhere that is on your `$PATH`).
- edit `bin/note.sh` to contain the path to the dev journal file.
- add the following to your `.bashrc` (or `.zshrc` or ...)

``` sh
alias n="$HOME/bin/note.sh"
```

## History and Thanks

This is a lua version of https://github.com/bitterjug/vim-notebook
