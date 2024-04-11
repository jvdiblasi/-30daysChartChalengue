#30DaysChartChallenge

rm(list=ls()) #limpiamos el envairoment
library(ggplot2)


#Day 10 Phisics

library(readxl)
df <- read_excel("G:/Mi unidad/+++/#30DayChartChallenge 2024/day10phisics.xlsx", 
                           col_types = c("text", "numeric"))
View(df)

ggplot(df) +
  aes(x = reorder(Objeto,+Distancia), weight = Distancia) + #x = reorder(Objeto,+Distancia) ordena de menor a myor
  geom_bar(position = "dodge", fill = "#B22222") +
  labs(
    x="", #así no me aparece el reorder...
    y = "millones de km",
    title = "Desde el sol a los planetas",
    subtitle = "distancia - millones de Km",
    caption = "#30daysChartChallenge  | #Day10 | Phisical"
    ) +
  geom_text(aes(y=Distancia,label = Distancia, vjust = -0.5),
                                      position = position_dodge(0.9), size = 3,
                                      angle = 0,  color = "#B22222"
            )+

    ggthemes::theme_stata() +
  theme(
    plot.title = element_text(size = 16L,
                              face = "bold",
                              hjust = 0.5)
  )


