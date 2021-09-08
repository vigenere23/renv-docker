#!/bin/sh

Rscript -e "renv::init(project = getwd())"
Rscript -e "renv::restore()"

exec $@
