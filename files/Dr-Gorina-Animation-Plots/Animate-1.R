if (!require("pacman")) install.packages("pacman")
if (!require("pacman")) install.packages("pacman") # This line is auxilary but tends to provide more robust work with packages
p_load(data.table, dplyr, curl, dplyr, tidyr, tsibble) # two modern packages to modify data objects in R
p_load(ggplot2, ggpubr, ggrepel) # two packages to visualize data
# You can add your own functions
`%+%` <- function(x,y){paste0(x, y)} # collapse two strings into one
`%gic%` <- function(x,y) {grepl(x, y, ignore.case = TRUE)}
theme_set(theme_pubr(border = TRUE)) # make figures beautiful and ascetic by default
p_load(fpc)

p_load(gganimate, gifski)
theme_set(theme_pubr(border = TRUE))

  
  
# Create a dataframe with the extended dataset

d <- fread("data-for-ggplot.csv")
jco_colors <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

# Create the animated ggplot
p <- ggplot()
p <- ggplot(d, aes(x = Year, y = Percent, group = Indicator, color = Indicator)) +
  geom_line(size = 2) +
  geom_hline(yintercept = 0) + 
  transition_reveal(Year) +
  labs(title = "") +
  theme_minimal() +
  scale_color_manual(values = jco_colors)
# 
# 
# p <- ggplot(d, aes(x = Year, y = Percent, group = Indicator, color = Indicator)) +
#   geom_line(size = 2) +
#   transition_reveal(Year) +
#   labs(title = "", 
#        x = "", y = "Percent", color = "Indicator") +
#   theme_minimal() +
#   theme(legend.position = "top",
#         plot.title = element_text(size = 16),
#         axis.text = element_text(size = 14),
#         legend.text = element_text(size = 12),
#         legend.title = element_text(size = 14),
#         panel.border = element_rect(color = "black", fill = NA),
#         plot.margin = margin(1, 1, 1, 1, "cm")) +
#   guides(color = guide_legend(override.aes = list(size = 3))) +
#     xlim(2001,2013.5)


p.animated <- animate(p, duration = 10, height = 800, width = 1200,
                      fps = 10, res = 200,
                      renderer = gifski_renderer())
anim_save("output2.gif", animation = p.animated)


