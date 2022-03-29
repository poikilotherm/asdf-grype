<div align="center">

# asdf-grype [![Build](https://github.com/poikilotherm/asdf-grype/actions/workflows/build.yml/badge.svg)](https://github.com/poikilotherm/asdf-grype/actions/workflows/build.yml) [![Lint](https://github.com/poikilotherm/asdf-grype/actions/workflows/lint.yml/badge.svg)](https://github.com/poikilotherm/asdf-grype/actions/workflows/lint.yml)


[grype](https://github.com/anchore/grype) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add grype
# or
asdf plugin add grype https://github.com/poikilotherm/asdf-grype.git
```

grype:

```shell
# Show all installable versions
asdf list-all grype

# Install specific version
asdf install grype latest

# Set a version globally (on your ~/.tool-versions file)
asdf global grype latest

# Now grype commands are available
grype version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/poikilotherm/asdf-grype/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Oliver Bertuch](https://github.com/poikilotherm/)
