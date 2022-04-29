data <- read.csv(file = "data1_full.csv", header = T)

sub_data <- data[data$country == "Canada" & data$year <= 1982, ]

write.csv(Canada, file = "Canada.csv", row.names = FALSE)

png("graph.png")
plot(lifeExp~year , sub_data , type='b')
dev.off()



