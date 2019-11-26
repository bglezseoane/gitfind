# Gitfind ![Status](https://img.shields.io/static/v1?label=status&message=production&color=brightgreen "Status: production")

Gitfind is an utility that finds the git repositories included in the directory you want. You can only list or apply another specific command to them. It also provides the option to filter the search to capture specific repositories.

Gitfind provides an user interface fully integrated in a Unix-like machine with a Shell environment. The tool responds in a format that can be redirected to any other system utility and uses different output error codes so that any incident can be properly interpreted. For all the above, Gitfind is a perfectly integrable utility in any scripting routine and a very flexible piece of software to your workflow.

To learn more about the use and the behaviour of Gitfind, please, read its manual page.



## Installation

### Using Homebrew

To install this app via Homebrew, use:

```sh
brew install bglezseoane/tap/gitfind
```

### Manual installation

#### To install

First clone this repository, and then execute:

```sh
make install
```

This command copies Gitfind's binaries and manpages to the default paths. You can check them with `make help` or revising the Makefile.
