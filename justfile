# Use PowerShell instead of sh:
set shell := ["powershell.exe", "-c"]

project := "Portfolio"

# Lists the available recipes.
default:
    just --list

# Adds package with specific version
add-package package *v:
    dotnet add {{project}} package {{package}} {{v