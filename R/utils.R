# library(grDevices)
# library(prettycheck) # github.com/danielvartan/prettycheck

get_color_tint <- function(
    color = "#FF00FF",
    position = 500,
    n = 1000
) {
  prettycheck:::assert_color(color)
  prettycheck:::assert_integerish(position, lower = 0, upper = 1000)
  prettycheck:::assert_integer_number(n, lower = 1)

  color_fun <- grDevices::colorRampPalette(c("black", color, "white"))
  color_values <- color_fun(n)

  color_values[position]
}

# library(here)
# library(prettycheck) # github.com/danielvartan/prettycheck
# library(yaml)

get_brand_color <- function(color) {
  brands_list <- yaml::read_yaml(here::here("_brand.yml"))

  palette_names <- brands_list$color$palette |> names()
  theme_names <- brands_list$color |> names()

  choices <- c(palette_names, theme_names)

  prettycheck:::assert_choice(color, choices)

  if (color %in% theme_names) {
    for (i in theme_names) {
      if (color == i) {
        color <- brands_list$color[[i]]
      }
    }
  }

  brands_list$color$palette[[color]]
}
