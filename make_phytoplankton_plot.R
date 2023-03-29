# Import library
library(ggplot2)

# Load data
data <- read.csv("phytoplankton_data.csv", header =TRUE)

# Make plot
ggplot(data, aes(x=month, y=phytoplankton)) + 
  geom_line(colour = "red", size=2) + 
  labs(title="Phytoplankton concentration in Nova Scotia",
       subtitle="units: milimoles/m3",
       caption="Source: NOAA, ERDDAP") +
  theme(text = element_text(size=15))

