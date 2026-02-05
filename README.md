<div align="center">
  <img alt="fish-eza" src="./assets/logo.png" height="200" />
</div>

# fish-ripgrep

A `ripgrep` plugin for the Fish shell.

### Installation

Install with [fisher](https://github.com/jorgebucaran/fisher):

```shell
fisher install givensuman/fish-ripgrep
```

### Usage

Replaces `grep` with an `rg` wrapper. To run the normal `grep` command, use `rgrep`.

### Environment variables

| Variable  | Description                          | Default                                    |
| --------- | ------------------------------------ | ------------------------------------------ |
| ripgrep_params | `rg` params to be used with every call | `--smart-case --hidden --follow --no-heading` |

### Aliases

```shell
alias rg  'rg $ripgrep_params'
alias rga 'rg $ripgrep_params --no-ignore'          # Search all files not in .gitignore
alias rgf 'rg $ripgrep_params --files'              # List files that would be searched
alias rgi 'rg $ripgrep_params --ignore-case'        # Case-insensitive search
alias rgl 'rg $ripgrep_params --files-with-matches' # Only show filenames with matches
alias rgc 'rg $ripgrep_params --count'              # Show count of matches per file
```

### Requirements

Just requires [ripgrep](https://github.com/BurntSushi/ripgrep)!

### License

[MIT](./LICENSE)
