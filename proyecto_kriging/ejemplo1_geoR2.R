#install.packages("geoR")
library(geoR)
prod98 <- as.geodata(soja98, coords.col = 1:2, data.col = "PH")
locat <- expand.grid(seq(min(soja98$X), max(soja98$X), l=100), 
                     seq(min(soja98$Y), max(soja98$Y), l=100))
kc <- krige.conv(prod98, loc=locat, 
                 krige = krige.control(type.krige = "ok", cov.pars=c(1,20)))
image(kc, col=gray((5:50)/55), axes = T)
contour(kc, axes = T, add = T)
points(prod98, cex.min = 0.1, cex.max = 1.5, pch = 19, add = T)