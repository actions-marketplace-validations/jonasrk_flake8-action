# Black Code Formatter GitHub Action

A GitHub action that runs [flake8 code linter](https://github.com/PyCQA/flake8) for Python.

## Example Workflow

A complete `.github/workflows/main.yml` could look like this 

```yml
name: CI

on: [push, pull_request]

jobs:
  lint:

    runs-on: ubuntu-latest

    steps:  
    - uses: actions/checkout@v1
    - name: Flake8 Code Linter
      uses: jonasrk/flake8-action@master
      with: 
        args: "--max-line-length=100 --exclude .ipython --ignore E266,W503,E203,E722"
```