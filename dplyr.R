install.packages('dplyr')
library('dplyr')
vignette('dplyr')
slice()
starwars
head(starwars)
?starwars

df %>%
  group_by(species) %>%
  summarise(
    n = n(),
    mass = mean(mass, na.rm = TRUE)
  ) %>%
  filter(n > 1)
