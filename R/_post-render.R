# library(beepr)
# library(fs)
# library(readr)
# library(stringr)

# Update `LICENSE.md` -----

file <- here::here("LICENSE.md")

data <-
  file |>
  readr::read_lines() |>
  stringr::str_replace_all(
    pattern = "20\\d{2}",
    replacement = as.character(Sys.Date() |> lubridate::year())
  )

data |> readr::write_lines(file)

# Add `og-image.png` to `./docs/images` -----

file <- here::here("docs", "images", "og-image.png")

fs::file_copy(here::here("images", "og-image.png"), file, overwrite = TRUE)

# Check if the script ran successfully -----

beepr::beep(1)

Sys.sleep(3)
