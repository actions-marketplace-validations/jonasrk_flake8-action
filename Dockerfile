FROM python:3

LABEL "com.github.actions.name"="flake8 linter"
LABEL "com.github.actions.description"="Lint Python code using flake8"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="https://github.com/jonasrk/flake8-action"
LABEL "homepage"="https://github.com/jonasrk/flake8-action"
LABEL "maintainer"="Jonas Kemper"

RUN pip install flake8

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
