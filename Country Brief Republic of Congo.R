install.packages("WDI")
library(WDI)
?WDI






WDI(
  country = "COD",
  indicator = c("SP.POP.TOTL", "SP.RUR.TOTL.ZG", "SE.PRM.ENRR", "SE.PRM.NENR", "SE.PRM.CMPT.FE.ZS", "SP.RUR.TOTL.ZG", "SP.DYN.LE00.MA.IN", "SH.STA.MMRT.NE", "SP.DYN.IMRT.FE.IN", "SH.DYN.NMRT"),
  start = 1960,
  end = 2020,
  extra = FALSE,
  cache = NULL,
  latest = NULL,
  language = "en"
)

ROC1 <- WDI(
  country = "COD",
  indicator = c("SP.POP.TOTL", "SP.RUR.TOTL.ZG", "SE.PRM.ENRR", "SE.PRM.CMPT.FE.ZS", "SP.RUR.TOTL.ZG", "SP.DYN.LE00.MA.IN", "SH.STA.MMRT.NE", "SP.DYN.IMRT.FE.IN", "SH.DYN.NMRT"),
  start = 1960,
  end = 2020,
  extra = FALSE,
  cache = NULL,
  latest = NULL,
  language = "en"
)

ROC1 %>%
  arrange(desc(year)) %>%
  filter(country == "Congo, Dem. Rep.")




library(readxl)
Data_for_analyses <- read_excel("Desktop/Data for analyses.xlsx")
View(Data_for_analyses)
Data_for_analyses


ggplot(Data_for_analyses, aes(x = Year, y = Population, color = Year)) +
  geom_point()

ggplot(Data_for_analyses, aes(x = Year, y = Rural_population)) +
  geom_point(alpha = .5, 
             fill="cornflowerblue", 
             color="black", 
             shape=21) +
  scale_size_continuous(range = c(1, 14)) +
  labs(x = "Years",
       y = "Rural population",
       size = "Total population") +
  theme_minimal()




ggplot(Data_for_analyses, aes(x = Year, y = Rural_population, size = Population)) +
  geom_point(alpha = .5, 
             fill="cornflowerblue", 
             color="black", 
             shape=21) +
  scale_size_continuous(range = c(1, 14)) +
  labs(x = "Years",
       y = "Rural population",
       size = "Total population") +
  theme_minimal()






ggplot(Data_for_analyses, aes(x = Year, y = Primary_school_completion_rate, size = School_enrollment)) +
  geom_point(alpha = .5, 
             fill="cornflowerblue", 
             color="black", 
             shape=21) +
  scale_size_continuous(range = c(1, 4.5)) +
  labs(x = "Years",
       y = "Completion rate",
       size = "School enrollment") +
  theme_minimal()






ggplot(Data_for_analyses, aes(x = Year, y = School_enrollment)) +
  geom_area(fill="cornflowerblue", color="black") +
  labs(x = "Years",
       y = "School enrollment") +
  theme_minimal()






# Water and sanitation


Water_coverage <- c("Urban Areas", "Rural Areas")

Measure <- c("47.3", "13")

GPI <- data.frame(Water_coverage, Measure)
GPI

ggplot(GPI, aes(x = Water_coverage, y = Measure)) +
  geom_bar(stat = "identity", fill = "cornflowerblue") +
  labs(title = "Water and sanitation",
       x = "Areas",
       y = "% of people covered") +
  theme_minimal()


ggplot(GPI, aes(x = Water_coverage, y = Measure)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Water and sanitation",
       x = "Areas",
       y = "% of people covered") +
  theme_minimal() +
  coord_flip()











