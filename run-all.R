
source("R/01-import.R")
source("R/02-clean.R")
quarto::quarto_render("report.qmd")

dir.create("data/raw", recursive = TRUE, showWarnings = FALSE)
dir.create("data/clean", recursive = TRUE, showWarnings = FALSE)