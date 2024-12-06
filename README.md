# shell-settings
A simple framework for shell helpers &amp; project organisation

## Core Functionality

The settings are split into Core (`general.sh`), technology (e.g. `tensorflow.sh`, `spacy.sh`) and project (`e.g. my_hello_world.sh`) settings. 

The core settings contain some general environment variables an bash / python helpers.

A few initial technology settings have been defined with environment variables, aliases and helper functions which I use on a day-to-day basis for various data science / Machine Learning Projects. I would expect any user to edit these to suit their own needs. 

Project specific settings files are used to store environment variables and helper functions for specific projects.

## Setup 

Install Homebrew.

Install pyenv:
```
brew install pyenv
```

Clone this repository, then in your .bash_profile copy the following (replace <PATH_TO_REPO> with the path to the cloned repository). This will run `general.sh`, which in turn sources all other settings files.

```
export SETTINGS_DIR=<PATH_TO_REPO>
source ${SETTINGS_DIR}/general.sh
```

Set up your project base directory by editing the `BASE_DIR` environment variable in `general.sh`.

## New Technology

To add settings for a new techology / OSS package, simply create a `<technology_name>.sh` settings file in the base directory.

## New Project

To start working on a new project called say, my-project, run the command `new_project my-project` (defined in `projects.sh`). This will create 3 things:
1. A project settings file called `my-project.sh` using the `project_template.sh` template
2. A virtual environment called `.my_project`

You can easily switch between projects by running the command `start my-project`. This will take you to the project's directory, run the project settings file, and enter you project's virtual environment.



