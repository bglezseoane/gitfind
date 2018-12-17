# gitfind use cases

gitfind is a simple utility that finds all the git repositories included in the folder you want or your local device. It can list or apply them the specific utility. It also provides the option to filter the search to catch a specific repository.

A transversal interest of the tool is allow a cross communication with other \*nix utilities.

## Use cases of gitfind

- Decomposition based on the scope:
	- All-repositories on `~` [A].
	- All-repositories on a specified path [P].

- Decomposition based on the goal:
	- Only list repositories [1].
	- Apply a function [2].
	- Apply a function verbose [3].


## Summary of command line orders

- `gitfind`: only list all local repositories (i.e.: reps. under `$HOME`) [1A].
- `gitfind <path>`: only list reps. in specified path [1P].
- `gitfind -e <util>`: apply (exec) specified utility to all local reps. [2A]
- `gitfind <path> -e <util>`: apply specified utility on specified path reps. [2P]
- `gitfind -e <util> -v`: apply specified utility to all local reps (verbose output). [3A]
- `gitfind <path> -e <util> -v`: apply specified utility on specified path reps (verbose output). [3P]


