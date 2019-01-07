# Decoupe des donnees en deux groupes : 1980 a 2000 et 2001 a 2018


# Montana
# Groupe 1 : 1980 - 1999
annee <- 1980
for (i in 0:19) { # 20 ans
  rbind(montana,smp[smp$State.Code == 30,])
  date <- toupper(montana_stat[,"Date"])
  tab_date <- montana[which(substr(date,1,4)==annee),]
  
  temp <- tab_date[,"Arithmetic.Mean"]
  temp <- temp[temp <= 117]
  moy <- mean(temp)
  annee <- annee + 1
}

# Groupe 2 : 2000 - 2018


# Floride
# Groupe 1 : 1980 - 1999

# Groupe 2 : 2000 - 2018


# Kansas
# Groupe 1 : 1980 - 1999

# Groupe 2 : 2000 - 2018


# Californie
# Groupe 1 : 1980 - 1999

# Groupe 2 : 2000 - 2018


# New York 
# Groupe 1 : 1980 - 1999

# Groupe 2 : 2000 - 2018