
stat_exercise <- function(...) {
  # locations of resource files in the package
  pkg_resource <- function(...) {
    system.file(..., package = "perejrmd")
  }

  bookdown::pdf_document2(
    latex_engine = "xelatex",
    toc = FALSE,
    number_sections = FALSE,
    ...
  )

}
