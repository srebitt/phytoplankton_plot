# Import library
library(ggplot2)

#load data
phytoplankton_data <- read_csv("C:/R Studio files/phytoplankton_plot/data/phytoplankton_data.csv")

# Make plot
ggplot(phytoplankton_data, aes(x=month, y=phytoplankton)) + 
  geom_line(colour = "red", size=2) + 
  labs(title="Phytoplankton concentration in Nova Scotia",
       subtitle="units: milimoles/m3",
       caption="Source: NOAA, ERDDAP") +
  theme(text = element_text(size=15))