# Load packages -----

library(brandr)
library(downlit)
library(ggplot2)
library(here)
library(katex)
library(knitr)
library(magrittr)
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
