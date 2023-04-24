# Workspace Launcher for macOS

Workspace Launcher is a Bash script that automates setting up your development environment on macOS by opening all the necessary applications, tools, and projects with a single command. This script is designed to help developers save time and improve efficiency when working on projects.

## Features

- Clone the project repository if not already present
- Open or focus the specified code editor, browser, and terminal
- Open the project in the code editor
- Open predefined browser tabs for quick access to important resources
- Change the working directory to the project directory in the terminal

## Prerequisites

- macOS
- Git
- Your preferred code editor, browser, and terminal installed

## Configuration

Before using the Workspace Launcher, you need to configure the script to match your preferences and project details. Open `workspace_launcher.sh` and edit the following variables:

- `code_editor`: Your preferred code editor (e.g., "Visual Studio Code")
- `browser`: Your preferred browser (e.g., "Google Chrome")
- `terminal`: Your preferred terminal (e.g., "Terminal")
- `project_directory`: The local path to your project directory
- `project_repo_url`: The URL of your project's Git repository
- `browser_tabs`: An array of URLs for browser tabs you want to open

## Usage

1. Clone this repository or download the `workspace_launcher.sh` script.
2. Give the script execute permissions with the following command:

```chmod +x workspace_launcher.sh```


3. Run the script in the terminal with:

```./workspace_launcher.sh```


Your development environment will be set up with all the necessary applications, tools, and projects opened.
