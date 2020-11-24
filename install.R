install.packages("xaringan")
install.packages("flair")
install.packages("reticulate")

reticulate::install_miniconda()

reticulate::py_install(c("pandas", "plotnine", "siuba"))
