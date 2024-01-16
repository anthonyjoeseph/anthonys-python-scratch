# Anthony's Python Scratch Env

## Use Miniconda

```
brew install --cask miniconda
```

Don't use pyenv or pipenv or anything else! They are bad!

## Install Dependencies

```
make install
```

That should create the conda environment and install everything into it

```
make start
```

That should run within the outlined conda environment

## Select interpreter

In the vscode command palette, enter "Python: Select Interpreter"

Use the output of `conda info --base` as your interpreter

This will enable debugging type inference, and formatting! Woohoo!

## Install Extensions

- python
- pylance (types)
- autopep8 (formatting)

Microsoft's own python static types
