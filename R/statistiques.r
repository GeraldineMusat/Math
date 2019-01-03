# Pour lancer le programme dans la console ecrire : source('R/statistiques.r')

# Creation table statistiques par AN
montana_stat <- data.frame(Min=c(), Max=c(), Moy=c(), row.names=c())
californi_stat <- data.frame(Min=c(), Max=c(), Moy=c(), row.names=c())
floride_stat <- data.frame(Min=c(), Max=c(), Moy=c(), row.names=c())
kansas_stat <- data.frame(Min=c(), Max=c(), Moy=c(), row.names=c())
newyork_stat <- data.frame(Min=c(), Max=c(), Moy=c(), row.names=c())

# Moyenne
annee <- 1980
for(i in 0:38){ # 38 ans
  # Montana
  date <- toupper(montana[,"Date.Local"])
  tab_date <- montana[which(substr(date,1,4)==annee),]
  
  temp <- tab_date[,"Arithmetic.Mean"]
  moy <- mean(temp)
  min <- min(temp)
  max <- max(temp)
  
  vect <- data.frame(Min=c(min), Max=c(max), Moy=c(moy), row.names=c(annee))
  montana_stat <- rbind(montana_stat,vect)
  
  # Californi
  date <- toupper(californi[,"Date.Local"])
  tab_date <- californi[which(substr(date,1,4)==annee),]
  
  temp <- tab_date[,"Arithmetic.Mean"]
  moy <- mean(temp)
  min <- min(temp)
  max <- max(temp)
  
  vect <- data.frame(Min=c(min), Max=c(max), Moy=c(moy), row.names=c(annee))
  californi_stat <- rbind(californi_stat,vect)
  
  # Floride
  date <- toupper(floride[,"Date.Local"])
  tab_date <- floride[which(substr(date,1,4)==annee),]
  
  temp <- tab_date[,"Arithmetic.Mean"]
  moy <- mean(temp)
  min <- min(temp)
  max <- max(temp)
  
  vect <- data.frame(Min=c(min), Max=c(max), Moy=c(moy), row.names=c(annee))
  floride_stat <- rbind(floride_stat,vect)
  
  # Kansas
  date <- toupper(kansas[,"Date.Local"])
  tab_date <- kansas[which(substr(date,1,4)==annee),]
  
  temp <- tab_date[,"Arithmetic.Mean"]
  moy <- mean(temp)
  min <- min(temp)
  max <- max(temp)
  
  vect <- data.frame(Min=c(min), Max=c(max), Moy=c(moy), row.names=c(annee))
  kansas_stat <- rbind(kansas_stat,vect)
  
  # New York
  date <- toupper(newyork[,"Date.Local"])
  tab_date <- newyork[which(substr(date,1,4)==annee),]
  
  temp <- tab_date[,"Arithmetic.Mean"]
  moy <- mean(temp)
  min <- min(temp)
  max <- max(temp)
  
  vect <- data.frame(Min=c(min), Max=c(max), Moy=c(moy), row.names=c(annee))
  newyork_stat <- rbind(newyork_stat,vect)
  
  annee <- annee + 1
}  