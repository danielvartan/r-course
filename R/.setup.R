# Load packages -----

library(brandr)
library(downlit)
library(ggplot2)
library(here)
library(katex)
library(knitr)
library(magrittr)
library(quartor) # github.com/danielvartan/quartor
library(ragg)
library(showtext)
library(sysfonts)
library(xml2)

# Set general options -----

options(scipen = 999)

# Set variables -----

set.seed(2026)

# Set knitr -----

clean_cache() |> suppressWarnings()

opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  root.dir = here(),
  dev = "ragg_png",
  fig.showtext = TRUE
)

# Set `brandr` -----

options(BRANDR_BRAND_YML = here("_brand.yml"))

brandr_options <- list(
  "BRANDR_COLOR_SEQUENTIAL" = get_brand_color(
    c("blue", "white")
  ),
  "BRANDR_COLOR_DIVERGING" = get_brand_color(
    c(
      "comp-blue-3",
      "white",
      "comp-blue-6"
    )
  ),
  "BRANDR_COLOR_QUALITATIVE" = get_brand_color(
    c(
      "square-blue-green",
      "square-blue-orange",
      "square-blue-blue",
      "square-blue-purple",
      "gray",
      "black",
      # "triad-blue-olive",
      "triad-blue-red",
      "triad-blue-blue"
    )
  )
)

for (i in seq_along(brandr_options)) {
  options(brandr_options[i])
}

# Set `showtext` -----

font_paths(here("ttf"))

font_add(
  family = "montserrat",
  regular = here("ttf", "montserrat-regular.ttf"),
  bold = here("ttf", "montserrat-bold.ttf"),
  italic = here("ttf", "montserrat-italic.ttf"),
  bolditalic = here("ttf", "montserrat-bolditalic.ttf")
)

font_add(
  family = "roboto",
  regular = here("ttf", "roboto-regular.ttf"),
  bold = here("ttf", "roboto-bold.ttf"),
  italic = here("ttf", "roboto-italic.ttf"),
  bolditalic = here("ttf", "roboto-bolditalic.ttf")
)

showtext_auto()

# Set `ggplot2` -----

theme_set(
  theme_bw() +
    theme(
      text = element_text(
        color = get_brand_color("black"),
        family = "montserrat",
        face = "plain"
      ),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      legend.frame = element_blank(),
      legend.ticks = element_line(color = "white")
    )
)

# Run `rbbt` -----

#' **IMPORTANT**
#'
#' Leave this code commented out unless you need to regenerate the bibliography
#' for Quarto documents from Zotero using Better BibTeX. This code cannot be run
#' in the CI/CD pipeline because it depends on having Zotero installed locally
#' with Better BibTeX configured.
#'
#' Uncheck the option "Apply title-casing to titles" in Zotero Better BibTeX
#' preferences (Edit > Settings > Better BibTeX > Miscellaneous).
#'
#' (2024-08-25)
#' This function should work with any version of BetterBibTeX (BBT) for Zotero.
#' Verify if @wmoldham PR was merged in the `rbbt` package (see issue #47
#' <https://github.com/paleolimbot/rbbt/issues/47>). If not, install `rbbt` from
#' @wmoldham fork `remotes::install_github("wmoldham/rbbt", force = TRUE)`.

# bbt_write_quarto_bib(
#   bib_file = here("bib", "references.bib"),
#   dir = c(".", "qmd"),
#   pattern = "\\.qmd$",
#   wd = here()
# )
