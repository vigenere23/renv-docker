# vigenere23/renv-${stage}

A pre-built Docker image setup with `renv` dependencies. 

## Stages and tags

2 stages are offered :

- `minimal` : only contains `renv`
- `dev` : based on `minimal`, contains the R `languageserver` package and Python's `radian` command-line interpreter for R.

The tag version specifies R's version. All images uses `rocker/r-ver:${R_VERSION}` as a base.

- `-minimal:3.6.3`, `-dev:3.6.3`
