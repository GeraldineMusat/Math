# Pour lancer le programme dans la console ecrire : source('FIG/figures.r')
# 
# The easiest way to get ggplot2 is to install the whole tidyverse:
#install.packages("tidyverse")

# Alternatively, install just ggplot2:
# install.packages("ggplot2")
# install.packages("ggmap")
library(ggplot2)
# library(ggmap)

# MONTANA
plot(montana_stat[,"Date"], montana_stat[,"Moy"],xlab="Années", ylab="Températures" , main="Évolution de la température minimal au Montana", type="b") 
plot(montana_stat[,"Date"], montana_stat[,"Min"],xlab="Années", ylab="Températures" , main="Évolution de la température minimal au Montana", type="b")
plot(montana_stat[,"Date"], montana_stat[,"Max"], type="b")
plot(montana_stat[,"Date"], montana_stat[,"EcType"], type="b") 

# Couverture des donnees recoltees sur le Montana
p <- ggplot(data=montana_long_temp, aes(x = Long, y = Lat, fill = ..level..)) +
          stat_density_2d(geom = "polygon") +
          xlab("Longitude") +
          ylab("Latitude") +
          labs(fill = "Densite")
# print(p)


# FLORIDE 
plot(floride_stat[,"Date"], floride_stat[,"Moy"], type="b") 
plot(floride_stat[,"Date"], floride_stat[,"Min"], type="b")
plot(floride_stat[,"Date"], floride_stat[,"Max"], type="b")
plot(floride_stat[,"Date"], floride_stat[,"EcType"], type="b") 

# Couverture des donnees recoltees sur la Floride
p <- ggplot(data=floride_long_temp, aes(x = Long, y = Lat, fill = ..level..)) +
  stat_density_2d(geom = "polygon") +
  xlab("Longitude") +
  ylab("Latitude") +
  labs(fill = "Densite")
# print(p)

# Californi 
plot(californi_stat[,"Date"], californi_stat[,"Moy"], type="b") 
plot(californi_stat[,"Date"], californi_stat[,"Min"], type="b")
plot(californi_stat[,"Date"], californi_stat[,"Max"], type="b")
plot(californi_stat[,"Date"], californi_stat[,"EcType"], type="b") 

# Couverture des donnees recoltees sur la Floride
p <- ggplot(data=californi_long_temp, aes(x = Long, y = Lat, fill = ..level..)) +
  stat_density_2d(geom = "polygon") +
  xlab("Longitude") +
  ylab("Latitude") +
  labs(fill = "Densite")
# print(p)

# KANSAS 
plot(kansas_stat[,"Date"], kansas_stat[,"Moy"], type="b") 
plot(kansas_stat[,"Date"], kansas_stat[,"Min"], type="b")
plot(kansas_stat[,"Date"], kansas_stat[,"Max"], type="b")
plot(kansas_stat[,"Date"], kansas_stat[,"EcType"], type="b") 

# Couverture des donnees recoltees sur la Floride
p <- ggplot(data=kansas_long_temp, aes(x = Long, y = Lat, fill = ..level..)) +
  stat_density_2d(geom = "polygon") +
  xlab("Longitude") +
  ylab("Latitude") +
  labs(fill = "Densite")
# print(p)


# NewYork 
plot(newyork_stat[,"Date"], newyork_stat[,"Moy"], type="b") 
plot(newyork_stat[,"Date"], newyork_stat[,"Min"], type="b")
plot(newyork_stat[,"Date"], newyork_stat[,"Max"], type="b")
plot(newyork_stat[,"Date"], newyork_stat[,"EcType"], type="b") 

# Couverture des donnees recoltees sur la Floride
p <- ggplot(data=newyork_long_temp, aes(x = Long, y = Lat, fill = ..level..)) +
  stat_density_2d(geom = "polygon") +
  xlab("Longitude") +
  ylab("Latitude") +
  labs(fill = "Densite")
# print(p)

# NewYork 
plot(newyork_stat[,"Date"], newyork_stat[,"Moy"], type="b") 
plot(newyork_stat[,"Date"], newyork_stat[,"Min"], type="b")
plot(newyork_stat[,"Date"], newyork_stat[,"Max"], type="b")
plot(newyork_stat[,"Date"], newyork_stat[,"EcType"], type="b") 

# Couverture des donnees recoltees sur la Floride
p <- ggplot(data=newyork_long_temp, aes(x = Long, y = Lat, fill = ..level..)) +
  stat_density_2d(geom = "polygon") +
  xlab("Longitude") +
  ylab("Latitude") +
  labs(fill = "Densite")
# print(p)


# MONTANA
# Ete
tab <- montana_stat_saison[montana_stat_saison$Saison == "Ete",]
plot(tab[,"Date"], tab[,"EcType"], xlab="Années", ylab="Températures" , main="Evolution de la température au Montana en été", type="b") 
# Hiver
tab <- montana_stat_saison[montana_stat_saison$Saison == "Hiver",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température au Montana en hiver", type="b")
# Automne
tab <- montana_stat_saison[montana_stat_saison$Saison == "Automne",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température au Montana en automne", type="b")
#Printemps
tab <- montana_stat_saison[montana_stat_saison$Saison == "Printemps",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température au Montana au printemps", type="b")


# Californie
# Ete
tab <- californi_stat_saison[californi_stat_saison$Saison == "Ete",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température en Californie en été", type="b")
# Hiver
tab <- californi_stat_saison[californi_stat_saison$Saison == "Hiver",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température en Californie en hiver", type="b")
# Automne
tab <- californi_stat_saison[californi_stat_saison$Saison == "Automne",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température en Californie en automne", type="b")
#Printemps
tab <- californi_stat_saison[californi_stat_saison$Saison == "Printemps",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température en Californie au Printemps", type="b")

# Kansas
# Ete
tab <- kansas_stat_saison[kansas_stat_saison$Saison == "Ete",]
plot(tab[,"Date"], tab[,"Moy"], xlab="Années", ylab="Températures" , main="Evolution de la température au Kansas en été", type="b")
# Hiver
tab <- kansas_stat_saison[kansas_stat_saison$Saison == "Hiver",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température au Kansas en hiver", type="b")
# Automne
tab <- kansas_stat_saison[kansas_stat_saison$Saison == "Automne",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température au Kansas en automne", type="b")
#Printemps
tab <- kansas_stat_saison[kansas_stat_saison$Saison == "Printemps",]
plot(tab[,"Date"], tab[,"Moy"], xlab="Années", ylab="Températures" , main="Evolution de la température au Kansas au printemps",type="b")


# New York
# Ete
tab <- newyork_stat_saison[newyork_stat_saison$Saison == "Ete",]
plot(tab[,"Date"], tab[,"Moy"], xlab="Années", ylab="Températures" , main="Evolution de la température à New York en été",type="b")
# Hiver
tab <- newyork_stat_saison[newyork_stat_saison$Saison == "Hiver",]
plot(tab[,"Date"], tab[,"Moy"], xlab="Années", ylab="Températures" , main="Evolution de la température à New York en hiver",type="b")
# Automne
tab <- newyork_stat_saison[newyork_stat_saison$Saison == "Automne",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température à New York en automne", type="b")
#Printemps
tab <- newyork_stat_saison[newyork_stat_saison$Saison == "Printemps",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température à New York au printemps", type="b")


# Floride
# Ete
tab <- floride_stat_saison[floride_stat_saison$Saison == "Ete",]
plot(tab[,"Date"], tab[,"Moy"], xlab="Années", ylab="Températures" , main="Evolution de la température en Floride en été",type="b")
# Hiver
tab <- floride_stat_saison[floride_stat_saison$Saison == "Hiver",]
plot(tab[,"Date"], tab[,"Moy"], xlab="Années", ylab="Températures" , main="Evolution de la température en Floride en hiver", type="b")
# Automne
tab <- floride_stat_saison[floride_stat_saison$Saison == "Automne",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température en Floride en automne", type="b")
#Printemps
tab <- floride_stat_saison[floride_stat_saison$Saison == "Printemps",]
plot(tab[,"Date"], tab[,"Moy"],xlab="Années", ylab="Températures" , main="Evolution de la température en Floride au printemps", type="b")






plot(californi_stat[,"Date"], californi_stat[,"Moy"], type="b") 
plot(californi_stat[,"Date"], californi_stat[,"Min"], type="b")
plot(californi_stat[,"Date"], californi_stat[,"Max"], type="b")
plot(californi_stat[,"Date"], californi_stat[,"EcType"], type="b")