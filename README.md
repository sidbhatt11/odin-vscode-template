# Odin Project Template for VSCode/VSCodium

I created this project in [VSCodium](https://vscodium.com/) as a starting point for my own [Odin](https://odin-lang.org/) learning and development journey. I am sharing it here because I think it may be useful for absolute beginners (like me) to get started with Odin once they have installed the compiler.

# What's included?

For VSCode or [VSCodium](https://vscodium.com/) users,
- [x] A list of essential extentions
    - [Odin Language Server](https://github.com/DanielGavin/ols) 
    - [CodeLLDB](https://github.com/vadimcn/codelldb)
- [x] A task config for building and running the 
    - application
    - test suite
- [x] A launch config for debugging the 
    - application
    - test suite
- [x] A simple `Makefile` that powers the configs above ^

# Pre-requisites

- `odin` compiler in your `PATH`. Please follow their [docs](https://odin-lang.org/docs/install/) to make sure you have odin and its pre-requisites installed. 

- `lldb` in your `PATH`. `llvm` is a pre-requisite of `odin` and `lldb` comes bundled with `llvm` releases, so chances are you already have it. 

- `make` in your `PATH`.

# Getting Started

## Clone/Copy
This is only a starter template. Simply fork/clone/download/[degit](https://github.com/Rich-Harris/degit) this repo to get started!

## Install extentions
Once you open the project in VSCode it should prompt you to install the recommended extentions. Please allow it to install. This might take a while.

## Odin Language Server
Once the extentions are intalled and initialised, the OLS extention will probably ask you to specify an `ols.json` file. If one doesn't exist yet, you can ask it to generate a new file from within the same prompt. 

It should look similar to the `ols.sample.json` file provided. You can modify & rename the sample file as well if you like, rather than asking the OLS extention to generate one for you. 

## Makefile

Please have a read of the `Makefile` to understand what is going on. You may want to change the name of the output file/executable. If you do so, please make sure you have also updated the `.vscode/launch.json` file since the debug launch configurations explicitly mention the file name.

# Usage

You can now continue using the `make` command (as God intended), or use VSCode's [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette) to start tasks.

That's it! Have fun!

# About the code

The code in the `src` folder in this repo is simply an exaggerated version of a 'hello-world' program which demonstrates the following:
- code organisation in packages
- string comparison and formatting
- simple unit testing in Odin
