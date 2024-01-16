attach(G5)


media_reactivos <- colMeans(G5[,c("Bajo",
                                  "Deficiente",
                                  "Regular",
                                  "Bueno",
                                  "Sobresaliente")])

media_reactivos

barplot(media_reactivos,
        main = "Gráfico de barras",
        ylim = c(0,5),
        xlab = "Maestros encuestados",
        ylab = "Escala",
        col = c("darkslategray"))



barplot(media_reactivos, main = "Gráfico de barras",
        ylim = c(0,10),
        xlim = c(0,6),
        ylab = "maestros encuestados",
        xlab = "Escala",
        col = c("cyan3"),
        width = c(0.8))
