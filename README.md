Public repository of code samples for Sphere Engine services.


# Programming language samples

The list of programming languages supported by Sphere Engine is available
[here](https://sphere-engine.com/supported-languages). This repository contains samples presenting input/output
operations for each of supported programming languages.


## Compilers module

Navigate to the `compilers/languages` directory and browse for a desired sample. The naming convention is
`ID Name (compiler)` where:

- `ID` is the programming language identifier in Sphere Engine,
- `Name` is the programming language name,
- *(optional)* `compiler` is the name of the programming language compiler.

A typical directory with code sample (e.g., `compilers/languages/116 Python 3`) contains a file with the source code
(e.g., `source.py`) and a file with input data (i.e., `input.txt`).

You can use both the user interface and the API to run any of these samples:

- user interface is available in the Sphere Engine panel by `Compilers -> Console` in the main menu
  ([link](https://sphere-engine.com/services/compilers/console#/)),
- API calls can be executed with `curl` like this:

```bash
cd "compilers/languages/116 Python 3";
curl -X POST \
    -F "compilerId=116" \
    -F "source=@source.py" \
    -F "input=1 2 10 42 11" \
    "https://<endpoint>.compilers.sphere-engine.com/api/v4/submissions?access_token=<access_token>"
```


## Problems module

Navigate to the `problems/languages` directory and browse for a desired sample. The naming convention is
`ID Name (compiler)` where:

- `ID` is the programming language identifier in Sphere Engine,
- `Name` is the programming language name,
- *(optional)* `compiler` is the name of the programming language compiler.

A typical directory with code sample (e.g., `problems/languages/116 Python 3`) contains a file with the source code
(e.g., `source.py`).

These samples are designed to be used with a
[GETFAMILIAR](https://sphere-engine.com/services/problems/editor#/problem/GETFAMILIAR) programming problem
available in the Sphere Engine Problems Editor.

You can use both the user interface and the API to run any of these samples:

- user interface is available in the Sphere Engine panel by `Problems -> Editor` in the main menu
  ([link](https://sphere-engine.com/services/problems/editor#/problems)); navigate to `Shared problems` tab and look for
  the `Get familiar with online judge system` problem
  ([link](https://sphere-engine.com/services/problems/editor#/problem/GETFAMILIAR)); use the `Test` section
  ([link](https://sphere-engine.com/services/problems/editor#/problem/GETFAMILIAR/test)) and run the
  sample by selecting a desired programming language.
- API calls can be executed with `curl` like this:

```bash
cd "problems/languages/116 Python 3";
curl -X POST \
    -F "problemId=20536" \
    -F "compilerId=116" \
    -F "source=@source.py" \
    "https://<endpoint>.problems.sphere-engine.com/api/v4/submissions?access_token=<access_token>"
```
