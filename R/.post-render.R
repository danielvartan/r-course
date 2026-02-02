# Load Packages -----

library(beepr)
library(fs)
library(here)

# Add `og-image.png` to `./docs/images` -----

file <- here("docs", "images", "og-image.png")

file_copy(here("images", "og-image.png"), file, overwrite = TRUE)

# Move `index-speaker.html` to `./docs` -----

if (file.exists(here("index-speaker.html"))) {
  file_move(
    here("index-speaker.html"),
    here("docs", "index-speaker.html")
  )
}

# Check If the Script Ran Successfully -----

beep(1)

Sys.sleep(3)
