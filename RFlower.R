# Drew Cooper's RScript for Generating Mandalas!
# Developed for EDGE 2018 Art and Science Gallery in Berlin, Germany.

options(repr.plot.width = 100, repr.plot.height = 100)
library("ggplot2")
points <- 3000
angle <- 45
t <- (1:points) * angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(
  aes(size <- x),
  size = 66,
  alpha = 0.25,
  color = "white",
  shape = 1
) + theme(
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(),
  panel.background = element_rect(fill = "black"),
  panel.border = element_blank(),
  axis.title = element_blank(),
  axis.ticks = element_blank(),
  axis.text = element_blank()
)