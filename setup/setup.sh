#!/bin/zsh
## ----------------------------------------------------------------------------
## About
## -----
## This script provides a reference to the commands and tools developers
## executed during project setup and maintenance. It may also be executed
## to bootstrap a new project, but should not be used within an existing project
## directory.
##
## When starting a new project:
## Copy setup.sh and common-vars.sh into a [project]/setup/
## ============================================================================

## Clear the screen and scrollback buffer
clear && printf '\e[3J'

## Do not `source` this script.  The path related vars defined in common-vars.sh
## would unintentionally be relative to the location of the common-vars.sh file.
REPO_ROOT_DIR=${0:a:h:h}
SCRIPT_DIR=${0:a:h}

## read and eval each line in common-vars.sh to insure they resolve relative
## to setup.sh, the currently executing script.
while read i; do eval $i; done < ${REPO_ROOT_DIR}/setup/common-vars.sh


## ----------------------------------------------------------------------------
## Usage: Don't.
## -------------
##
## Prerequisites
## -------------
## * macOS - Not tested on other platforms
##
## Since you are obviously going to use this anyway:
## 1. Review Prerequisites
## 2. Open the Terminal
## 3. cd [~/Projects]/[project name]   # Or whereever you cloned or extracted this project
## 4. chmod u+x ./setup/setup.sh       # Grant yourself permission to execute this script
## 5. ./setup/setup.sh                 # Before running, read and understand every step
##                                       in this script!
## ============================================================================

## ----------------------------------------------------------------------------
## Project initialization

## Ex.
#nvm install --lts      ## Angular requires LTS version of Node
node --version > .nvmrc ## Set the node version to use
npm init -y             ## Node project initialization
## ============================================================================


## ----------------------------------------------------------------------------
## Angular Project initialization
## execute from within the current project directory

npx -p @angular/cli ng new minimal-angular-1 --directory .
## ============================================================================


## ----------------------------------------------------------------------------
## Install Dev Dependencies

# npm install typescript --save-dev      # TypeScript transpiler
# npm install @types/node --save-dev     # Type definitions for Node.js
# npm install http-server --save-dev     # A simple static HTTP server
## ============================================================================

## ----------------------------------------------------------------------------
## Create localhost certs (You'll need to have created CA certs and keys prior)
./tasks/2_create-site-cert.sh zapdaz.com
## ============================================================================
