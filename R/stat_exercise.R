
#' Custom PDF template
#'
#' @export
#'
stat_exercise <- function(...) {
  # locations of resource files in the package
  pkg_resource <- function(...) {
    system.file(..., package = "perejrmd")
  }
  template <- pkg_resource(paste0("rmarkdown/templates/stat_exercise/",
                                  "resources/template.tex"))
  bookdown::pdf_document2(
    latex_engine = "xelatex",
    toc = FALSE,
    number_sections = FALSE,
    template = template,
    ...
  )

}
