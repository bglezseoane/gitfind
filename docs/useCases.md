# gitfind use cases

gitfind is a utility that finds the git repositories included in the directory you want. You can only list or apply another specific utility to them. It also provides the option to filter the search to capture a specific repository.

A transversal interest of the tool is allow a cross communication with other \*nix utilities.



## Use cases of gitfind

- Decomposition based on the scope:
	- All-repositories on `~` [A].
	- All-repositories on a specified path [P].
	- Filter the search [F] looking only the repository name.
	- Filter the search [V] looking all the path chain (vague filter).

- Decomposition based on the goal:
	- Only list repositories [1].
	- Apply a function [2].
	- Apply a function verbose [3].



## Summary of command line possibilities

- `gitfind`: only list all current working directory repositories (i.e.: reps. under `$PWD`) [1A].
- `gitfind -f <pattern>`: only list all current working directory repositories (i.e.: reps. under `$PWD`) matched with the pattern [1AF].
- `gitfind -F <pattern>`: only list all current working directory repositories matched with the vague vague pattern [1AV].
- `gitfind -p <path>`: only list reps. in specified path [1P].
- `gitfind -p <path> -f <pattern>`: only list reps. in specified path matched with the pattern [1PF].
- `gitfind -p <path> -F <pattern>`: only list reps. in specified path matched with the vague pattern [1PV].
- `gitfind -x <util>`: apply (exec) specified utility to all current working directory reps. [2A].
- `gitfind -x <util> -f <pattern>`: apply (exec) specified utility to all current working directory reps. matched with the pattern  [2AF].
- `gitfind -x <util> -F <pattern>`: apply (exec) specified utility to all current working directory reps. matched with the pvague attern  [2AV].
- `gitfind -p <path> -x <util>`: apply specified utility on specified path reps. [2P].
- `gitfind -p <path> -x <util> -f <pattern>`: apply specified utility on specified path reps. matched with the pattern [2PF].
- `gitfind -p <path> -x <util> -F <pattern>`: apply specified utility on specified path reps. matched with the vague pattern [2PV].
- `gitfind -x <util> -v`: apply specified utility to all current working directory reps (verbose output) [3A].
- `gitfind -x <util> -f <pattern> -v`: apply specified utility to all current working directory reps (verbose output) matched with the pattern [3AF].
- `gitfind -x <util> -F <pattern> -v`: apply specified utility to all current working directory reps (verbose output) matched with the vague pattern [3AV].
- `gitfind -p <path> -x <util> -v`: apply specified utility on specified path reps (verbose output) [3P].
- `gitfind -p <path> -x <util> -f <pattern> -v `: apply specified utility on specified path reps (verbose output) matched with the pattern [3PF].
- `gitfind -p <path> -x <util> -F <pattern> -v `: apply specified utility on specified path reps (verbose output) matched with the vague pattern [3PV].

**Note**: flags do not have to be in order.

