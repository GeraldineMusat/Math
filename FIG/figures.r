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


# MONTANA
# Ete
tab <- montana_stat_saison[montana_stat_saison$Saison == "Ete",]
plot(tab[,"Date"], tab[,"EcType"], type="b") 


# Californie
# Ete
tab <- californi_stat_saison[californi_stat_saison$Saison == "Ete",]
plot(tab[,"Date"], tab[,"Moy"], type="b")


# Kansas
# Ete
tab <- kansas_stat_saison[kansas_stat_saison$Saison == "Ete",]
plot(tab[,"Date"], tab[,"Moy"], type="b")


# New York
# Ete
tab <- newyork_stat_saison[newyork_stat_saison$Saison == "Ete",]
plot(tab[,"Date"], tab[,"Moy"], type="b")


# Floride
# Ete
tab <- floride_stat_saison[floride_stat_saison$Saison == "Ete",]
plot(tab[,"Date"], tab[,"Moy"], type="b")

