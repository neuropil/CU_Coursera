require(devtools)
install_github("burrm/lolcat")


data <- c(6.649, 6.639, 6.629, 6.642, 6.624, 6.616, 6.649, 6.654, 6.649, 6.642, 6.649, 6.637, 6.649, 6.647, 6.644, 6.657, 6.654, 6.634, 6.644, 6.649)
datadf <- data.frame(data)

lolcat::frequency.dist.ungrouped(datadf$data)
lolcat::frequency.polygon.ungrouped(datadf$data)
lolcat::spc.run.chart(datadf$data)

lolcat::frequency.dist.grouped(viscosity$centistokes)
lolcat::hist.grouped(viscosity$centistokes)
boxplot(viscosity$centistokes)
summary(viscosity$centistokes)

dp <- density(yield$strength)
plot(dp)
polygon(dp)

lolcat::hist.grouped(yield$strength)
lines(density(yield$strength))
