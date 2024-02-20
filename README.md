# rosetta-CLI
A collection of programs implementing the same CLI

## How it works

We have a number of example programs, each of them get their 
own folder at the top level of the repo.
For example, **basic** This program is defined as having the following interface

`./basic -a -b INT -v FILENAME`

Where:
- `-a` is a boolean flag, defaulting to false,
- `-b` is a flag that takes a single integer as a value.
- `-v` is a verbosity flag. The program should increase an integer variable called verbosity
by one from a default value of zero for each time the -v flag is given.
- `FILENAME` is a positional argument, to be given after all flags.

Each folder in that program's directory is a program that implements the given cli. 

The name of the folder tells you what is inside in the following format:

`lang_[h/s/x/l]_name`

Where:
- lang is the langauge the program is implemented in
- h/s/x/l indicate:
  - h: Handrolled parsing
  - s: stdlib program (meaning no external dependencies outside of the standard library for the language)
  - x: external libraries are used
  - l: long options are implemented
- name is a descriptive indication of what is going in the program (name of lib used, etc.)



