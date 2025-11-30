library(plotly)
library(htmlwidgets)

fig <- plot_ly(mtcars, 
               x = ~wt, 
               y = ~hp, 
               z = ~qsec, 
               color = ~cyl, 
               colors = c('#BF382A', '#0C4B8E'))

fig <- fig %>% add_markers()

fig <- fig %>% layout(scene = list(xaxis = list(title = 'Peso'),
                                   yaxis = list(title = 'Cavalos (HP)'),
                                   zaxis = list(title = 'Velocidade')))

print(fig)

saveWidget(fig, file = "docs/index.html")

