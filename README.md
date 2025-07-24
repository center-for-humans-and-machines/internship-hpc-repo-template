# internship-repo-template

This repository template is a base repository for the CHM internship
projects. This is to fork only, don't use it to implement projects.

## Installation

This project uses [Poetry](https://python-poetry.org/) for dependency
management. To install:

### On macOS:

Set-up github ssh access (see how to do this [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)), then:

```bash
git clone git@github.com:center-for-humans-and-machines/internship-hpc-repo-template.git
```

Run the automated install script:
```bash
./dev/install-macos.sh
```

Or install manually:
```bash
# Install pipx
brew install pipx && pipx ensurepath

# Install Poetry
pipx install poetry

# Install project
poetry install
```

Then activate via

```bash
# Search activation file
poetry env activate

# Activate virtual environment
source <<activate_file>>
```

### On Raven cluster
To install the repository on raven use ssh.
Instructions can be found [here](https://mpib.atlassian.net/wiki/spaces/CP/pages/2148073476/SSH+to+Raven+Cluster), [here](https://docs.mpcdf.mpg.de/doc/computing/raven-user-guide.html#login) and [here](https://mpib.atlassian.net/wiki/spaces/CP/pages/1487011842/Passwordless+login+to+Raven+from+VSCode).


```bash
ssh raven
```

Set-up github ssh access (see how to do this [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)), then:

```bash
git clone git@github.com:center-for-humans-and-machines/internship-hpc-repo-template.git
```

Run the automated install script:
```bash
./dev/install-raven.sh
```

Or install manually:
```bash
# Load python version
module load python-waterboa/2025.06

# Install project
poetry install
```

Then activate via

```bash
# Search activation file
poetry env activate

# Activate virtual environment
source <<activate_file>>
```

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
