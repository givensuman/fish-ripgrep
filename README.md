<div align="center">
  <img alt="fish-ripgrep" src="./assets/logo.png" height="200" />
</div>

# fish-ripgrep

A `ripgrep` plugin for the Fish shell.

### Installation

Install with [fisher](https://github.com/jorgebucaran/fisher):

```shell
fisher install givensuman/fish-ripgrep
```

### Usage

Replaces `grep` with `rg`. To run the normal `grep` command, use `rgrep`.

| Variable       | Description                            | Default                                       |
| -------------- | -------------------------------------- | --------------------------------------------- |
| ripgrep_params | `rg` params to be used with every call | `--smart-case --hidden --follow --no-heading` |

### Aliases

| Alias | Command                   | Description                           |
| ----- | ------------------------- | ------------------------------------- |
| rga   | `rg --no-ignore`          | Search all files                      |
| rgc   | `rg --count`              | Count matching lines per file         |
| rgf   | `rg --files`              | List files that would be searched     |
| rgi   | `rg --ignore-case`        | Search with case-insensitive matching |
| rgl   | `rg --files-with-matches` | List only files containing matches    |

### Requirements

Just requires [ripgrep](https://github.com/BurntSushi/ripgrep)!

### License

[MIT](./LICENSE)
