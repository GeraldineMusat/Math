# Pour lancer le programme dans la console ecrire : source('R/statistiques.r')

# Creation table statistiques par AN
montana_stat <- data.frame(Date=c(), Min=c(), Max=c(), Moy=c(), EcType=c(), row.names=c())
californi_stat <- data.frame(Date=c(), Min=c(), Max=c(), Moy=c(), EcType=c(), row.names=c())
floride_stat <- data.frame(Date=c(), Min=c(), Max=c(), Moy=c(), EcType=c(), row.names=c())
kansas_stat <- data.frame(Date=c(), Min=c(), Max=c(), Moy=c(), EcType=c(), row.names=c())
newyork_stat <- data.frame(Date=c(), Min=c(), Max=c(), Moy=c(), EcType=c(), row.names=c())

# Stat calcul
annee <- 1980
for(i in 0:38){ # 38 ans
  # Montana
  date <- toupper(montana[,"Date.Local"])
  tab_date <- montana[which(substr(date,1,4)==annee),]
  
  temp <- tab_date[,"Arithmetic.Mean"]
  temp <- temp[temp <= 117] # min -70
  moy <- mean(temp)
  min <- min(temp)
  max <- max(temp)
  ecarttype <- sqrt(mean(temp^2)-moy^2)
  
  vect <- data.frame(Date=c(annee), Min=c(min), Max=c(max), Moy=c(moy), EcType=c(ecarttype), row.names=c())
  montana_stat <- rbind(montana_stat,vect)
  
  # Californie
  date <- toupper(californi[,"Date.Local"])
  tab_date <- californi[which(substr(date,1,4)==annee),]
  
  temp <- tab_date[,"Arithmetic.Mean"]
  temp <- temp[temp <= 134] #min -45
  moy <- mean(temp)
  min <- min(temp)
  max <- max(temp)
  ecarttype <- sqrt(mean(temp^2)-moy^2)
  
  vect <- data.frame(Date=c(annee), Min=c(min), Max=c(max), Moy=c(moy), EcType=c(ecarttype), row.names=c())
  californi_stat <- rbind(californi_stat,vect)
  
  # Floride
  date <- toupper(floride[,"Date.Local"])
  tab_date <- floride[which(substr(date,1,4)==annee),]
  
  temp <- tab_date[,"Arithmetic.Mean"]
  temp <- temp[temp <= 109] #min -2
  moy <- mean(temp)
  min <- min(temp)
  max <- max(temp)
  ecarttype <- sqrt(mean(temp^2)-moy^2)
  
  vect <- data.frame(Date=c(annee), Min=c(min), Max=c(max), Moy=c(moy), EcType=c(ecarttype), row.names=c())
  floride_stat <- rbind(floride_stat,vect)
  
  # Kansas
  date <- toupper(kansas[,"Date.Local"])
  tab_date <- kansas[which(substr(date,1,4)==annee),]
  
  temp <- tab_date[,"Arithmetic.Mean"]
  temp <- temp[temp <= 121] #min -40
  moy <- mean(temp)
  min <- min(temp)
  max <- max(temp)
  ecarttype <- sqrt(mean(temp^2)-moy^2)
  
  vect <- data.frame(Date=c(annee), Min=c(min), Max=c(max), Moy=c(moy), EcType=c(ecarttype), row.names=c())
  kansas_stat <- rbind(kansas_stat,vect)
  
  # New York
  if (annee >= 1990) {
    date <- toupper(newyork[,"Date.Local"])
    tab_date <- newyork[which(substr(date,1,4)==annee),]
    
    temp <- tab_date[,"Arithmetic.Mean"]
    temp <- temp[temp <= 109]
    moy <- mean(temp)
    min <- min(temp)
    max <- max(temp)
    ecarttype <- sqrt(mean(temp^2)-moy^2)
    
    vect <- data.frame(Date=c(annee), Min=c(min), Max=c(max), Moy=c(moy), EcType=c(ecarttype), row.names=c())
    newyork_stat <- rbind(newyork_stat,vect)
  }
  
  
  annee <- annee + 1
}  




montana_long_temp <- data.frame(Date=c(), Long=c(), Lat=c(), Temp=c(), row.names=c())
kansas_long_temp <- data.frame(Date=c(), Long=c(), Lat=c(), Temp=c(), row.names=c())
floride_long_temp <- data.frame(Date=c(), Long=c(), Lat=c(), Temp=c(), row.names=c())
californi_long_temp <- data.frame(Date=c(), Long=c(), Lat=c(), Temp=c(), row.names=c())
newyork_long_temp <- data.frame(Date=c(), Long=c(), Lat=c(), Temp=c(), row.names=c())

# Recuperation Longitude avec date 
annee <- 1980
for(i in 0:38){ # 38 ans
  # montana
  date <- toupper(montana[,"Date.Local"])
  tab_date <- montana[which(substr(date,1,4)==annee),]
  
  montana_long <- tab_date[,'Longitude']
  montana_long_unique <- unique(montana_long)
  
  montana_lat <- tab_date[,'Latitude']
  montana_lat_unique <- unique(montana_lat)
  
  # print(montana_long_unique)
  # print(montana_lat_unique)
  
  for(j in montana_long_unique){
    montana_temp <- tab_date[tab_date$Longitude == j, "Arithmetic.Mean"]
    moy <- mean(montana_temp)
    vect <- data.frame(Date=c(annee), Long=c(j), Lat=c(montana_lat_unique[j]), Temp=c(moy), row.names=c())
    montana_long_temp <- rbind(montana_long_temp,vect)
  }
  
  # floride
  date <- toupper(floride[,"Date.Local"])
  tab_date <- floride[which(substr(date,1,4)==annee),]
  
  floride_lat <- tab_date[,'Latitude']
  floride_lat_unique <- unique(floride_lat)
  
  floride_long <- tab_date[,'Longitude']
  floride_long_unique <- unique(floride_long)
  
  for(j in floride_long_unique){
    floride_temp <- tab_date[tab_date$Longitude == j, "Arithmetic.Mean"]
    moy <- mean(floride_temp)
    vect <- data.frame(Date=c(annee), Long=c(j), Lat=c(floride_lat_unique[j]), Temp=c(moy), row.names=c())
    floride_long_temp <- rbind(floride_long_temp,vect)
  }
  
  # newyork
  date <- toupper(newyork[,"Date.Local"])
  tab_date <- newyork[which(substr(date,1,4)==annee),]
  
  newyork_long <- tab_date[,'Longitude']
  newyork_long_unique <- unique(newyork_long)
  
  newyork_lat <- tab_date[,'Latitude']
  newyork_lat_unique <- unique(newyork_lat)
  
  for(j in newyork_long_unique){
    newyork_temp <- tab_date[tab_date$Longitude == j, "Arithmetic.Mean"]
    moy <- mean(newyork_temp)
    vect <- data.frame(Date=c(annee), Long=c(j), Lat=c(newyork_lat_unique[j]), Temp=c(moy), row.names=c())
    newyork_long_temp <- rbind(newyork_long_temp,vect)
  }
  
  # kansas
  date <- toupper(kansas[,"Date.Local"])
  tab_date <- kansas[which(substr(date,1,4)==annee),]
  
  kansas_long <- tab_date[,'Longitude']
  kansas_long_unique <- unique(kansas_long)
  
  kansas_lat <- tab_date[,'Latitude']
  kansas_lat_unique <- unique(kansas_lat)
  
  for(j in kansas_long_unique){
    kansas_temp <- tab_date[tab_date$Longitude == j, "Arithmetic.Mean"]
    moy <- mean(kansas_temp)
    vect <- data.frame(Date=c(annee), Long=c(j), Lat=c(kansas_lat_unique[j]), Temp=c(moy), row.names=c())
    kansas_long_temp <- rbind(kansas_long_temp,vect)
  }
  
  # californi
  date <- toupper(californi[,"Date.Local"])
  tab_date <- californi[which(substr(date,1,4)==annee),]
  
  californi_long <- tab_date[,'Longitude']
  californi_long_unique <- unique(californi_long)
  
  californi_lat <- tab_date[,'Latitude']
  californi_lat_unique <- unique(californi_lat)
  
  for(j in californi_long_unique){
    californi_temp <- tab_date[tab_date$Longitude == j, "Arithmetic.Mean"]
    moy <- mean(californi_temp)
    vect <- data.frame(Date=c(annee), Long=c(j), Lat=c(californi_lat_unique[j]), Temp=c(moy), row.names=c())
    californi_long_temp <- rbind(californi_long_temp,vect)
  }
  
  print(annee)
  annee <- annee + 1
}

Moyenne_Temp_annees_Montana <- mean(montana_stat[,"Moy"])
print(Moyenne_Temp_annees_Montana)

Moyenne_Long_annees_Montana <- mean(montana[,"Longitude"])
print(Moyenne_Long_annees_Montana)



# Saisons

# Floride
floride_stat_saison <- data.frame(Date=c(), Saison=c(), Min=c(), Max=c(), Moy=c(), EcType=c(), row.names=c())
montana_stat_saison <- data.frame(Date=c(), Saison=c(), Min=c(), Max=c(), Moy=c(), EcType=c(), row.names=c())
kansas_stat_saison <- data.frame(Date=c(), Saison=c(), Min=c(), Max=c(), Moy=c(), EcType=c(), row.names=c())
californi_stat_saison <- data.frame(Date=c(), Saison=c(), Min=c(), Max=c(), Moy=c(), EcType=c(), row.names=c())
newyork_stat_saison <- data.frame(Date=c(), Saison=c(), Min=c(), Max=c(), Moy=c(), EcType=c(), row.names=c())

annee <- 1980
s <- c("Printemps", "Ete", "Automne", "Hiver")

for (i in 0:38) {
  
  for(k in s){ # Parcourir les 4 saisons
    
    if(k == "Printemps"){
      mois <- 4
      
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(floride[,"Date.Local"])
        tab_date <- floride[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        temp <- temp[temp <= 109]
        
        mois <- mois + 1
      }
      
      
    }
    if(k == "Ete"){
      mois <- 7
      
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(floride[,"Date.Local"])
        tab_date <- floride[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        temp <- temp[temp <= 109]
        
        mois <- mois + 1
      }
      
    }
    if(k == "Automne"){
      mois <- 10
      for (j in 1:3) {
        date <- paste(annee, "-", mois, sep = "")
        
        tdate <- toupper(floride[,"Date.Local"])
        tab_date <- floride[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        temp <- temp[temp <= 109]
        
        mois <- mois + 1
      }
      
    }
    if(k == "Hiver"){
      mois <- 1
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(floride[,"Date.Local"])
        tab_date <- floride[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        temp <- temp[temp <= 109]
        
        mois <- mois + 1
      }
    }
    
    moy <- mean(temp)
    min <- min(temp)
    max <- max(temp)
    ecarttype <- sqrt(mean(temp^2)-moy^2)
    saison <- k
    vect <- data.frame(Date=c(annee), Saison=c(saison), Min=c(min), Max=c(max), Moy=c(moy), EcType=c(ecarttype), row.names=c())
    floride_stat_saison <- rbind(floride_stat_saison,vect)
    temp <- c()
  }
  
  # New York 
  for(k in s){ # Parcourir les 4 saisons
    
    if(k == "Printemps"){
      mois <- 4
      
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(newyork[,"Date.Local"])
        tab_date <- newyork[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        temp <- temp[temp <= 109]
        
        mois <- mois + 1
      }
      
      
    }
    if(k == "Ete"){
      mois <- 7
      
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(newyork[,"Date.Local"])
        tab_date <- newyork[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        temp <- temp[temp <= 109]
        
        mois <- mois + 1
      }
      
    }
    if(k == "Automne"){
      mois <- 10
      for (j in 1:3) {
        date <- paste(annee, "-", mois, sep = "")
        
        tdate <- toupper(newyork[,"Date.Local"])
        tab_date <- newyork[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        temp <- temp[temp <= 109]
        
        mois <- mois + 1
      }
      
    }
    if(k == "Hiver"){
      mois <- 1
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(newyork[,"Date.Local"])
        tab_date <- newyork[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        temp <- temp[temp <= 109]
        
        mois <- mois + 1
      }
    }
    
    moy <- mean(temp)
    min <- min(temp)
    max <- max(temp)
    ecarttype <- sqrt(mean(temp^2)-moy^2)
    saison <- k
    vect <- data.frame(Date=c(annee), Saison=c(saison), Min=c(min), Max=c(max), Moy=c(moy), EcType=c(ecarttype), row.names=c())
    newyork_stat_saison <- rbind(newyork_stat_saison,vect)
    temp <- c()
  }
  
  # Californi
  for(k in s){ # Parcourir les 4 saisons
    
    if(k == "Printemps"){
      mois <- 4
      
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(californi[,"Date.Local"])
        tab_date <- californi[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
      
      
    }
    if(k == "Ete"){
      mois <- 7
      
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(californi[,"Date.Local"])
        tab_date <- californi[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
      
    }
    if(k == "Automne"){
      mois <- 10
      for (j in 1:3) {
        date <- paste(annee, "-", mois, sep = "")
        
        tdate <- toupper(californi[,"Date.Local"])
        tab_date <- californi[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
      
    }
    if(k == "Hiver"){
      mois <- 1
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(californi[,"Date.Local"])
        tab_date <- californi[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
    }
    
    temp <- temp[temp <= 134]
    moy <- mean(temp)
    min <- min(temp)
    max <- max(temp)
    ecarttype <- sqrt(mean(temp^2)-moy^2)
    saison <- k
    vect <- data.frame(Date=c(annee), Saison=c(saison), Min=c(min), Max=c(max), Moy=c(moy), EcType=c(ecarttype), row.names=c())
    californi_stat_saison <- rbind(californi_stat_saison,vect)
    temp <- c()
  }
  
  # Montana
  for(k in s){ # Parcourir les 4 saisons
    
    if(k == "Printemps"){
      mois <- 4
      
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(montana[,"Date.Local"])
        tab_date <- montana[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
      
      
    }
    if(k == "Ete"){
      mois <- 7
      
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(montana[,"Date.Local"])
        tab_date <- montana[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
      
    }
    if(k == "Automne"){
      mois <- 10
      for (j in 1:3) {
        date <- paste(annee, "-", mois, sep = "")
        
        tdate <- toupper(montana[,"Date.Local"])
        tab_date <- montana[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
      
    }
    if(k == "Hiver"){
      mois <- 1
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(montana[,"Date.Local"])
        tab_date <- montana[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
    }
    
    temp <- temp[temp <= 117]
    moy <- mean(temp)
    min <- min(temp)
    max <- max(temp)
    ecarttype <- sqrt(mean(temp^2)-moy^2)
    saison <- k
    vect <- data.frame(Date=c(annee), Saison=c(saison), Min=c(min), Max=c(max), Moy=c(moy), EcType=c(ecarttype), row.names=c())
    montana_stat_saison <- rbind(montana_stat_saison,vect)
    temp <- c()
  }
  
  # Kansas
  for(k in s){ # Parcourir les 4 saisons
    
    if(k == "Printemps"){
      mois <- 4
      
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(kansas[,"Date.Local"])
        tab_date <- kansas[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
      
      
    }
    if(k == "Ete"){
      mois <- 7
      
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(kansas[,"Date.Local"])
        tab_date <- kansas[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
      
    }
    if(k == "Automne"){
      mois <- 10
      for (j in 1:3) {
        date <- paste(annee, "-", mois, sep = "")
        
        tdate <- toupper(kansas[,"Date.Local"])
        tab_date <- kansas[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
      
    }
    if(k == "Hiver"){
      mois <- 1
      for (j in 1:3) {
        date <- paste(annee, "-0", mois, sep = "")
        
        tdate <- toupper(kansas[,"Date.Local"])
        tab_date <- kansas[which(substr(tdate,1,7)==date),]
        print(date)
        
        temp <- rbind(temp,tab_date[,"Arithmetic.Mean"])
        
        mois <- mois + 1
      }
    }
    
    temp <- temp[temp <= 121]
    moy <- mean(temp)
    min <- min(temp)
    max <- max(temp)
    ecarttype <- sqrt(mean(temp^2)-moy^2)
    saison <- k
    vect <- data.frame(Date=c(annee), Saison=c(saison), Min=c(min), Max=c(max), Moy=c(moy), EcType=c(ecarttype), row.names=c())
    kansas_stat_saison <- rbind(kansas_stat_saison,vect)
    temp <- c()
  }
  
  annee <- annee + 1
}


