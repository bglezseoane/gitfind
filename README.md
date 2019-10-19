# gitfind

Gitfind is a utility that finds the git repositories included in the directory you want. You can only list or apply another specific utility to them. It also provides the option to filter the search to capture a specific repository.

Gitfind provides a user interface fully integrated in a Bash environment and in a \*nix machine. The tool responds in a format that can be redirected to any other system utility and uses different output error codes so that any incident can be properly interpreted. For all the above, gitind is a perfectly integrable utility in any scripting routine and a very flexible piece of software to your workflow.

To learn more about the use and the behaviour of Gitfind, read the manual page.



## Installation

### Using Homebrew

To install this app via Homebrew, use:

```sh
brew install glezseoane/homebrew-tap/gitfind
```

### Manual installation

#### To install

To install Gitfind, first clone this repository, and then execute:

`cd install && ./install.sh`.

**This command copies the Gitfind script file and the manual page file to, respectively**:

- `/usr/local/bin`.
- `/usr/local/share/man/man1/` in macOS machines or `/usr/share/man/man1` in Linux machines.

You may need to run the above command with superuser privileges, depending on the configuration of your machine. Only if necessary, execute:

`sudo cd install && ./install.sh`.

#### To uninstall

To uninstall Gitfind, execute:

`cd install && ./uninstall.sh`

You may need to run the above command with superuser privileges, depending on the configuration of your machine. Only if necessary, execute:

`sudo cd install && ./uninstall.sh` 

