# internship-repo-template

This repository template is a base repository for the CHM internship
projects. This is to fork only, don't use it to implement projects.

## Installation

This project uses [Poetry](https://python-poetry.org/) for dependency
management. To install:

### On macOS:
1. Install pipx: `brew install pipx && pipx ensurepath`
2. Install Poetry: `pipx install poetry`
3. Install project: `poetry install`
4. Find virtual environment: `poetry env activate`
5. Activate virtual environment: `source <<activate_file>>`

### On Raven cluster
1. load python version `module load python-waterboa/2025.06`
2. Install project: `poetry install`
3. Find virtual environment: `poetry env activate`
4. Activate virtual environment: `source <<activate_file>>`

### Other systems:
For installation on other systems, see [pipx installation docs](https://pipx.pypa.io/stable/installation/)
and [Poetry documentation](https://python-poetry.org/docs/).

## Run Project

The documentation on how to use this project is to be found in [doc](doc/) folder. Available guides are

- How to run the example training of gpt2 ([training guide](doc/run_slurm_train.md))

## Running Tests

Execute tests using pytest:
```bash
poetry run pytest
```
or if you want to get coverage report
```bash
poetry run coverage run --source=src -m pytest
&& poetry run coverage report
```

## Continuous Integration (CI)

The CI system automatically runs code quality checks and tests on every push and pull request. It verifies code formatting, runs pre-commit hooks, executes the test suite, and ensures test coverage meets the 90% minimum requirement.

## Contributing

Please read [contributing.md](contributing.md) for guidelines on how to
contribute to this codebase.

## License

This project is licensed under the terms specified in the [LICENSE](LICENSE)
file.

## About Poetry

Poetry is a modern dependency management and packaging tool for Python. It
handles virtual environments, dependency resolution, and package publishing
automatically. The `pyproject.toml` file defines project metadata and
dependencies.
