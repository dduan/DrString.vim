# DrString.vim

Wrappers for [DrString][], a DocString formatter and linter for Swift.

[DrString]: https://github.com/dduan/DrString

## Usage

First, install [DrString](https://github.com/dduan/DrString/blob/master/Documentation/GettingStarted.md#install).

Install `dduan/DrString.vim` with your plugin mananger. For example, with
vim-plug this would be

```vim
Plug 'dduan/DrString.vim'
```

Call directly or bind one of the included functions. For example, add the
following in your config to make `<leader>d` generate and format docstrings
withing selected range:

```vim
autocmd FileType swift nnoremap <buffer> <leader>d :call DrString#Format()<cr>
autocmd FileType swift vnoremap <buffer> <leader>d :call DrString#Format()<cr>
```

## Function


| Name | Description |
| ---- | ----------- |
| `DrString#Format()` | Formats docstring under the cursor or selecetd range. Generate placeholders for missing docstring components. |
| `DrString#FormatAll()` | Like `DrString#Format()` but for the entire file. |
| `DrString#Check()` | Runs DrString's `check` subcommand for the file associated with the buffer. If any problems are found, show them the quickfix window|
| `DrString#Version()` | Shows DrString's release version. |

_For formatting and checking commands, the Vim buffer must have been written to
a file first_.

## License

[MIT](LICENSE.md).
