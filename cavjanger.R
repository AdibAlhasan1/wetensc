---
title: "test"
output: html_document
---

# Load the data
biometric_data <- read.table(file = "C:/Users/adeeb/Desktop/wetensc/schoenmaat.csv",
                             header = TRUE,
                             sep = ",")

# Create a scatterplot of Schoenmaat vs. Leeftijd
ggplot(biometric_data, aes(x = Leeftijd, y = Schoenmaat)) +
  geom_point() +
  stat_summary(aes(group = Leeftijd), fun = mean, geom = "point", size = 3, color = "red") +
  labs(x = "Leeftijd", y = "Schoenmaat", title = "Schoenmaat vs. Leeftijd")

# Save the plot as a png file
ggsave("my_plot.png")

# Names: Alice, Bob, Carol, Dave

