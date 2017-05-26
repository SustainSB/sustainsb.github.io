#!/usr/bin/env Rscript

library(rmarkdown)

#rmds = list.files('.', '*.\\.Rmd')
rmds = c('prep_layers.Rmd')

for (rmd in rmds){
  rmarkdown::render(rmd)
}