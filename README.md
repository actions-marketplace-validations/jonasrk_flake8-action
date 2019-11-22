# Black Code Formatter GitHub Action

A GitHub action that runs [flake8 code linter](https://github.com/PyCQA/flake8) for Python.

## Example Workflow

```workflow
workflow "Example Workflow" {
  on = "push"
  resolves = ["Lint"]
}

action "Lint" {
  uses = "jonasrk/flake8-action@master"
  args = "--max-line-length=100"
}
```