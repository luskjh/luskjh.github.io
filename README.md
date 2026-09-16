# Dotfiles

Dotfiles configuration.

## Requirements

- [1Password CLI][1pass-cli]
- [GNU Stow][stow]

## Local setup

```sh
$ git clone git@github.com:luskjh/dotfiles
$ cd dotfiles
$ make stow
```

## Makefile targets

| Target   | Description                                     |
| -------- | ----------------------------------------------- |
| `inject` | Run `op inject` on all files ending with `.tpl` |
| `stow`   | Stow all packages (dependent on `inject`)       |

## Templates

Templates end with the `.tpl` extension (which are excluded from being
symlinked by `stow`). When you add new templates, you need to ignore
the non-templated version in `.gitignore`.

[1pass-cli]: //www.1password.dev/cli
[stow]: //www.gnu.org/software/stow/manual/stow.html
