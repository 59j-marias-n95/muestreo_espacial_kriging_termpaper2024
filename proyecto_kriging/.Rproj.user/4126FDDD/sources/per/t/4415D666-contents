#Vector de capturas en las ubicaciones 1 y 2
y <- c(5.526, 1.417)

#Matriz de variogramas entre sitios de la muestra
Gamma <- cbind(c(0, 4.8, 1), c(4.8, 0, 1), c(1, 1, 0))

#Vector de variogramas entre sitios de la muestra con el sitio
#de la prediccion
gamma <- c(2.0, 4.7, 1)

#Vector de coeficientes optimos y multiplicador de Lagrange
a <- round(solve(Gamma, gamma), 2)

#Prediccion de kriging en la localidad de interes
yhat_0 <- round(sum(a[1:2]*y), 3)

#Varianza de kriging de la prediccion
MSPE <- round(sum(a[1:3]*gamma[1:3]), 1) 

#Error medio de la prediccion
MSE <- round(sqrt(MSPE), 1)

