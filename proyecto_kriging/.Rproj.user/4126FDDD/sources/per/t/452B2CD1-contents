#Vector de capturas en las ubicaciones 1 y 2
y <- c(5.526, 1.417)

#Matriz de covarianzas entre sitios de la muestra
G <- cbind(c(5.1, 0.3, 1), c(0.3, 5.1, 1), c(1, 1, 0))

#Vector de covarianzas entre sitios de la muestra con el sitio
#de la prediccion
h <- c(3.1, 0.4, 1)

#Vector de coeficientes optimos y multiplicador de Lagrange
f <- round(solve(G, h), 2)

#Prediccion de kriging en la localidad de interes
yhat_0 <- round(sum(f[1:2]*y), 3)

#Varianza de kriging de la prediccion
MSPE <- round(G[1,1] - sum(f[1:3]*h[1:3]), 1) 

#Error medio de la prediccion
MSE <- round(sqrt(MSPE), 1)
