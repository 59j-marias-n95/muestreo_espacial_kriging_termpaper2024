#install.packages("geoR")
library(geoR)

#asignacion de la data de interes
produccion98 <- as.geodata(soja98, coords.col = 1:2, data.col = "PH")

#la funcion variog da el variograma para una distancia maxima de 50 unidades
variograma <- variog(produccion98, max.dist = 50)
plot(variograma, pch = 19, cex = 1)

#curva del ajusted para el variograma
fitted <- variofit(variograma)
lines(fitted)
