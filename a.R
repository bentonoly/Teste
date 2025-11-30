# 1. Carregar as bibliotecas
library(plotly)
library(htmlwidgets)

# 2. Criar um gráfico 3D interativo usando o conjunto de dados 'mtcars'
# (Esses dados sobre carros já vêm dentro do R, não precisa baixar nada)
fig <- plot_ly(mtcars, 
               x = ~wt, 
               y = ~hp, 
               z = ~qsec, 
               color = ~cyl, 
               colors = c('#BF382A', '#0C4B8E')) # Cores personalizadas

fig <- fig %>% add_markers()

fig <- fig %>% layout(scene = list(xaxis = list(title = 'Peso'),
                                   yaxis = list(title = 'Cavalos (HP)'),
                                   zaxis = list(title = 'Velocidade')))

# 3. Mostrar o gráfico no RStudio (para você ver se gostou)
print(fig)

# 4. Salvar como página da web na pasta docs para o GitHub
saveWidget(fig, file = "docs/index.html")

