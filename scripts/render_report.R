#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(rmarkdown)
})

old_wd <- getwd()
on.exit(setwd(old_wd), add = TRUE)

setwd("report")

rmarkdown::render(
  input = "breast_cancer_analysis.Rmd",
  output_file = "breast_cancer_analysis.md"
)
