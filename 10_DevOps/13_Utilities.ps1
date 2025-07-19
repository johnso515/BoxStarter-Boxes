
# If you installed this from the windows store, and then logged in with the same account, it would already be installed...
if (!(Get-AppxPackage Microsoft.WindowsTerminal -ErrorAction Ignore)) {
    choco upgrade -y microsoft-windows-terminal
}

Write-Host "Beginning the 13_xx work..." -ForegroundColor Gray

# Delta provides language syntax-highlighting, within-line insertion/deletion detection, and restructured diff output for git on the command line.
choco upgrade -y delta

# A search tool that combines the usability of ag with the raw speed of grep. 
# choco upgrade -y ripgrep

# fzf is a general-purpose command-line fuzzy finder
# choco upgrade -y fzf

# Tbd
# choco upgrade -y bat
# The aim of the project is to be the jq or sed of yaml files
# choco upgrade -y yq

# Command-line JSON processor 
# choco upgrade -y jq

# gh is GitHub on the command line. 
choco upgrade -y gh

choco upgrade -y chocolateygui

choco upgrade -y bitwarden
choco upgrade -y bitwarden-cli

# What version do I need
# choco upgrade -y gitversion.portable
choco install gitversion.portable --version 5.12.0 -y --allow-downgrade --pin
choco upgrade -y putty.install

choco upgrade -y git.install --package-parameters="'/GitOnlyOnPath /WindowsTerminal /NoShellIntegration /SChannel'"

# choco upgrade -y gitkraken
choco upgrade -y filezilla
# choco upgrade -y cyberduck

## I tried using terraform for infrastructure as code, but I don't like it
# choco upgrade -y terraform
