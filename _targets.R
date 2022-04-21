# Load packages required to define the pipeline:
library(targets)

source("R/crepe_functions.R")

# Replace the target list below with your own:
list(
  list(
    tar_target(bowl,    take_bowl()),
    tar_target(flour,   add_flour(bowl, 550)),
    tar_target(dry_mix, add_sugar(flour, 75)),
    tar_target(egg_mix, add_egg(dry_mix, 6)),
    tar_target(
      butter_mix, add_butter(egg_mix, 90)
    ),
    tar_target(
      wet_mix, add_milk(butter_mix, 1000)
    ),
    tar_target(ready_mix, whisk(wet_mix)),
    tar_target(crepes, cook_in_pan(ready_mix))
  )
)
