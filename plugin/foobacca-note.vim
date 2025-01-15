" Title:        Foobacca Note
" Description:  A plugin to provide easy dev journal implementation
" Last Change:  13 January 2025
" Maintainer:   Hamish Downer <https://github.com/foobacca>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_foobacca_note")
    finish
endif
let g:loaded_foobacca_note = 1

" Exposes the plugin's functions for use as commands in Neovim.
command! -nargs=0 NoteAdd lua require("foobacca-note").note_add()
