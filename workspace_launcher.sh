#!/bin/bash

# Workspace Launcher for macOS

# Configuration
code_editor="Visual Studio Code" # Change to your preferred code editor
browser="Google Chrome" # Change to your preferred browser
terminal="Terminal" # Change to your preferred terminal
project_directory="/path/to/your/project" # Change to your project directory
project_repo_url="https://github.com/username/repo.git" # Change to your project's git repository URL
browser_tabs=(
    "https://github.com"
    "https://stackoverflow.com"
    "https://developer.mozilla.org"
)

# Function to check if an application is running
is_app_running() {
    pgrep -q -x "$1"
}

# Function to open or focus an application
open_or_focus_app() {
    if ! is_app_running "$1"; then
        open -a "$1"
    else
        osascript -e "tell application \"$1\" to activate"
    fi
}

# Clone the project repository if not already present
if [ ! -d "$project_directory" ]; then
    git clone "$project_repo_url" "$project_directory"
fi

# Open or focus the code editor, browser, and terminal
open_or_focus_app "$code_editor"
open_or_focus_app "$browser"
open_or_focus_app "$terminal"

# Open the project in the code editor
osascript -e "tell application \"$code_editor\" to open \"$project_directory\""

# Open browser tabs
for tab in "${browser_tabs[@]}"; do
    osascript -e "tell application \"$browser\" to open location \"$tab\""
done

# Change directory to the project directory in the terminal
osascript -e "tell application \"$terminal\" to do script \"cd $project_directory && clear\"" 
