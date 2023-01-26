
# install.packages("dplyr")
library(dplyr)

#install.packages("stringr")
library(stringr)

#install.packages('tidyverse')
library(tidyverse)

#install.packages('ggplot2')
library(ggplot2)

#install.packages('gridExtra')
library(gridExtra)

#install.packages('ggthemes')
library(ggthemes)

# install.packages('patchwork')
library(patchwork) 

# install.packages('grid')
library(grid)

#install.packages('ggrepel')
library(ggrepel)

# install.packages('forcats')
library(forcats)

#install.packages('RColorBrewer')
library(RColorBrewer)

# install.packages('viridis')
library(viridis)

# install.packages('circlize')
# library(circlize)

###CSV import
Overtake2022 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv/2022 Overtakes - Sheet1.csv')
Overtake2021 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2021 Overtakes - Sheet1.csv')
Overtake2020 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2020 Overtakes - Sheet1.csv')
Overtake2019 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2019 Overtakes - Sheet1.csv')
Overtake2018 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2018 Overtakes - Sheet1.csv')
Overtake2017 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2017 Overtakes - Sheet1.csv')
Overtake2016 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2016 Overtakes - Sheet1.csv')
Overtake2015 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2015 Overtakes  - Sheet1.csv')
Overtake2014 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2014 Overtakes - Sheet1.csv')
Overtake2013 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2013 Overtakes - Sheet1.csv')
Overtake2012 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2012 Overtakes - Sheet1.csv')
Overtake2011 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2011 Overtakes - Sheet1.csv')
Overtake2010 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2010 Overtakes - Sheet1.csv')
Overtake2009 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2009 Overtakes - Sheet1.csv')
Overtake2008 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2008 Overtakes - Sheet1.csv')
Overtake2007 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2007 Overtakes - Sheet1.csv')
Overtake2006 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2006 Overtakes - Sheet1.csv')
Overtake2005 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2005 Overtakes - Sheet1.csv')
Overtake2004 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2004 Overtakes - Sheet1.csv')
Overtake2003 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2003 Overtakes - Sheet1.csv')
Overtake2002 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2002 Overtakes - Sheet1.csv')
Overtake2001 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2001 Overtakes - Sheet1.csv')
Overtake2000 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/2000 Overtakes - Sheet1.csv')
Overtake1999 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/1999 Overtakes - Sheet1.csv')
Overtake1998 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/1998 Overtakes - Sheet1.csv')
Overtake1997 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/1997 Overtakes - Sheet1.csv')
Overtake1996 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/1996 Overtakes - Sheet1.csv')
Overtake1995 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/1995 Overtakes - Sheet1.csv')
Overtake1994 = read.csv('/Users/gianlucafava/Desktop/Progetto_DRS/csv copia/1994 Overtakes - Sheet1.csv')


##first test, correctness of the data

data.frame(table(Overtake2022$Race == "Hungary"))
## give 65, correct

data.frame(table(Overtake2022$Race == "Bahrain"))
## give 76, correct

data.frame(table(Overtake2022$Race == "Monaco"))
## give 12, correct

Overtake2021 %>% filter(Overtaker == "Vettel")
Overtake2021 %>% filter(Overtaker == "Alonso")
Overtake2021 %>% filter(Overtaker == "Raikkonen")
##these turn out to be a bit different from the official data but this is due to the fact that the person who created the dataset starts counting overtaking from lap 2

###I make a single dataset to have less messing up, first I have to put a date for each dataset since there isn't
Overtake2022$date = "2022"
Overtake2022 = rename(Overtake2022, Live. = Live)
Overtake2022 = rename(Overtake2022, Overtakee = Overtaken)

Overtake2021$date = "2021"
Overtake2021 = rename(Overtake2021, Live. = Live)
Overtake2021 = rename(Overtake2021, Overtakee = Overtaken)

Overtake2020$date = "2020"
Overtake2020 = rename(Overtake2020, Live. = Live)
Overtake2020[Overtake2020 == "70th Anniversary"] <- "Great Britain"
Monaco2020 = data_frame(
  Race = "Monaco",
  Lap = NA,
  Position = NA,
  Overtaker = NA,
  Overtakee = NA,
  Live. = NA,
  Turn = NA,
  date = "2020"
)
Overtake2020 = full_join(Overtake2020, Monaco2020)

Overtake2019$date = "2019"
Overtake2019 = rename(Overtake2019, Live. = Live)

Overtake2018$date = "2018"
Overtake2018 = rename(Overtake2018, Live. = Live)

Overtake2017$date = "2017"
Overtake2017 = rename(Overtake2017, Live. = Live)

Overtake2016$date = "2016"

Overtake2015$date = "2015"
Overtake2015 = rename(Overtake2015, Live. = Live)

Overtake2014$date = "2014"
Overtake2013$date = "2013"
Overtake2012$date = "2012"

Overtake2011$date = "2011"
Overtake2011 = rename(Overtake2011, Live. = Live)

Overtake2010$date = "2010"

Overtake2009$date = "2009"
Overtake2009 = rename(Overtake2009, Live. = Live)

Overtake2008$date = "2008"

Overtake2007$date = "2007"
Overtake2007 = rename(Overtake2007, Live. = Live)

Overtake2006$date = "2006"
Overtake2005$date = "2005"
Overtake2004$date = "2004"
Overtake2003$date = "2003"
Overtake2002$date = "2002"

Overtake2001$date = "2001"
Overtake2001 = rename(Overtake2001, Live. = Live)

Overtake2000$date = "2000"
Overtake1999$date = "1999"

Overtake1998$date = "1998"
Overtake1998 = rename(Overtake1998, Live. = Live)

Overtake1997$date = "1997"
Overtake1997 = rename(Overtake1997, Live. = Live)

Overtake1996$date = "1996"
Overtake1996 = rename(Overtake1996, Live. = Live)

Overtake1995$date = "1995"
Overtake1995 = rename(Overtake1995, Live. = Live)

Overtake1994$date = "1994"
Overtake1994 = rename(Overtake1994, Live. = Live)


AllData = full_join(Overtake2022, Overtake2021)
AllData = full_join(AllData, Overtake2020)
AllData = full_join(AllData, Overtake2019)
AllData = full_join(AllData, Overtake2018)
AllData = full_join(AllData, Overtake2017)
AllData = full_join(AllData, Overtake2016)
AllData = full_join(AllData, Overtake2015)
AllData = full_join(AllData, Overtake2014)
AllData = full_join(AllData, Overtake2013)
AllData = full_join(AllData, Overtake2012)
AllData = full_join(AllData, Overtake2011)
AllData = full_join(AllData, Overtake2010)
AllData = full_join(AllData, Overtake2009)
AllData = full_join(AllData, Overtake2008)
AllData = full_join(AllData, Overtake2007)
AllData = full_join(AllData, Overtake2006)
AllData = full_join(AllData, Overtake2005)
AllData = full_join(AllData, Overtake2004)
AllData = full_join(AllData, Overtake2003)
AllData = full_join(AllData, Overtake2002)
AllData = full_join(AllData, Overtake2001)
AllData = full_join(AllData, Overtake2000)
AllData = full_join(AllData, Overtake1999)
AllData = full_join(AllData, Overtake1998)
AllData = full_join(AllData, Overtake1997)
AllData = full_join(AllData, Overtake1996)
AllData = full_join(AllData, Overtake1995)
AllData = full_join(AllData, Overtake1994)


##all the overtake from 1999 since today
###I want to select only races with more than 5 races and select only races and not sprint races

AllData[AllData == "Emilia-Romagna S"] <- "Emilia Romagna Sprint"
AllData[AllData == "Emilia-Romagna"] <- "Emilia Romagna"
AllData[AllData == "GB Sprint"] <- "Great Britain Sprint"
AllData[AllData == "San Marino"] <- "Emilia Romagna"
AllData[AllData == "Britain"] <- "Great Britain"




#I want to analyze for circuits with more overtaking, if they have increased in the straight where there is the DRS or in the curve just after
##China
Print19 = AllData %>%
  subset(date == "2011" ) %>%
  filter(Race == "Hungary") %>%
  group_by(Race, Turn) %>%
  summarize(count = n()) %>%
  arrange(count) %>%
  ggplot(aes(x=reorder(Turn, count), y=count, fill=class) ) +
  geom_bar(aes(fill=count), stat='identity', color='white',size=.2) +
  theme_fivethirtyeight(base_size = 11, base_family = "sans") +
  scale_colour_gradient(
    name="",
    low = "#0C36A7",
    high = "#14CBF8",
    space = "Lab",
    na.value = "grey50",
    guide = "colourbar",
    aesthetics = "colour") +
  theme(legend.position="none") +
  labs(title='Sorpassi per curva nel GP d Ungheria: 2011',
       subtitle = 'Non tutti i sorpassi sono indicizzati ad una curva perchè non sono stati mostrati') +
  AllData %>%
  subset(date == "2010" ) %>%
  filter(Race == "Hungary") %>%
  group_by(Race, Turn) %>%
  summarize(count = n()) %>%
  arrange(count) %>%
  ggplot(aes(x=reorder(Turn, count), y=count, fill=class) ) +
  geom_bar(aes(fill=count), stat='identity', color='white',size=.2) +
  theme_fivethirtyeight(base_size = 11, base_family = "sans") +
  scale_colour_gradient(
    name="",
    low = "#0C36A7",
    high = "#14CBF8",
    space = "Lab",
    na.value = "grey50",
    guide = "colourbar",
    aesthetics = "colour") +
  theme(legend.position="none") +
  labs(title='Sorpassi per curva nel GP d Ungheria: 2010',
       subtitle = 'Non tutti i sorpassi sono indicizzati ad una curva perchè non sono stati mostrati')
#DRS: before of turn 1


#Belgium
Plot20 = AllData %>%
  subset(date == "2011" ) %>%
  filter(Race == "Belgium") %>%
  group_by(Race, Turn) %>%
  summarize(count = n()) %>%
  arrange(count) %>%
  ggplot(aes(x=reorder(Turn, count), y=count, fill=class) ) +
  geom_bar(aes(fill=count), stat='identity', color='white',size=.2) +
  theme_fivethirtyeight(base_size = 11, base_family = "sans") +
  scale_colour_gradient(
    name="",
    low = "#0C36A7",
    high = "#14CBF8",
    space = "Lab",
    na.value = "grey50",
    guide = "colourbar",
    aesthetics = "colour") +
  theme(legend.position="none") +
  labs(title='Sorpassi per curva nel GP del Belgio: 2011',
       subtitle = 'Non tutti i sorpassi sono indicizzati ad una curva perchè non sono stati mostrati') +
  AllData %>%
  subset(date == "2010" ) %>%
  filter(Race == "Belgium") %>%
  group_by(Race, Turn) %>%
  summarize(count = n()) %>%
  arrange(count) %>%
  ggplot(aes(x=reorder(Turn, count), y=count, fill=class) ) +
  geom_bar(aes(fill=count), stat='identity', color='white',size=.2) +
  theme_fivethirtyeight(base_size = 11, base_family = "sans") +
  scale_colour_gradient(
    name="",
    low = "#0C36A7",
    high = "#14CBF8",
    space = "Lab",
    na.value = "grey50",
    guide = "colourbar",
    aesthetics = "colour") +
  theme(legend.position="none") +
  labs(title='Sorpassi per curva nel GP del Belgio: 2010',
       subtitle = 'Non tutti i sorpassi sono indicizzati ad una curva perchè non sono stati mostrati')
##DRS: Les Combes & La source


#Abu Dhabi
Plot21 = AllData %>%
  subset(date == "2011" ) %>%
  filter(Race == "Abu Dhabi") %>%
  group_by(Race, Turn) %>%
  summarize(count = n()) %>%
  arrange(count) %>%
  ggplot(aes(x=reorder(Turn, count), y=count, fill=class) ) +
  geom_bar(aes(fill=count), stat='identity', color='white',size=.2) +
  theme_fivethirtyeight(base_size = 11, base_family = "sans") +
  scale_colour_gradient(
    name="",
    low = "#0C36A7",
    high = "#14CBF8",
    space = "Lab",
    na.value = "grey50",
    guide = "colourbar",
    aesthetics = "colour") +
  theme(legend.position="none") +
  labs(title='Sorpassi per curva nel GP di Abu Dhabi: 2011',
       subtitle = 'Non tutti i sorpassi sono indicizzati ad una curva perchè non sono stati mostrati') +
  AllData %>%
  subset(date == "2010" ) %>%
  filter(Race == "Abu Dhabi") %>%
  group_by(Race, Turn) %>%
  summarize(count = n()) %>%
  arrange(count) %>%
  ggplot(aes(x=reorder(Turn, count), y=count, fill=class) ) +
  geom_bar(aes(fill=count), stat='identity', color='white',size=.2) +
  theme_fivethirtyeight(base_size = 11, base_family = "sans") +
  scale_colour_gradient(
    name="",
    low = "#0C36A7",
    high = "#14CBF8",
    space = "Lab",
    na.value = "grey50",
    guide = "colourbar",
    aesthetics = "colour") +
  theme(legend.position="none") +
  labs(title='Sorpassi per curva nel GP di Abu Dhabi: 2010',
       subtitle = 'Non tutti i sorpassi sono indicizzati ad una curva perchè non sono stati mostrati')
##DRS: 8 & 11



