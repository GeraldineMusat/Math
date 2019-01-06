# Pour lancer le programme dans la console ecrire : source('R/newgraph.r')
##Analyse de l'évolution de la température moyenne par Etat (Régression linéaire)
#Californie :
plot(californi_stat[,"Date"], californi_stat[,"Moy"])
lm(californi_stat[,"Moy"]~californi_stat[,"Date"])

#Résultat obtenu :
#Call:
#lm(formula = californi_stat[, "Moy"] ~ californi_stat[, "Date"])

#Coefficients:
 #            (Intercept)  californi_stat[, "Date"]  
  #             -240.9223                    0.1506  
abline(-240.9223,0.1506,col='red')

#Kansas
plot(kansas_stat[,"Date"], kansas_stat[,"Moy"])
lm(kansas_stat[,"Moy"]~kansas_stat[,"Date"])
abline(-133.58055,0.09803,col='red')

#Floride
plot(floride_stat[,"Date"], floride_stat[,"Moy"])
lm(floride_stat[,"Moy"]~floride_stat[,"Date"])
abline(126.40114,-0.02646,col='red')


#Montana
plot(montana_stat[,"Date"], montana_stat[,"Moy"])
lm(montana_stat[,"Moy"]~montana_stat[,"Date"])
abline(123.32641,-0.03867,col='red')


#NewYork
plot(newyork_stat[,"Date"], newyork_stat[,"Moy"])
lm(newyork_stat[,"Moy"]~newyork_stat[,"Date"])
abline(309.3603 ,-0.1295,col='red')

###### Distribution des températures minimales et maximales par Etat selon la saison
##FLORIDE
etefloride <- floride_stat_saison[floride_stat_saison$Saison == "Ete",]
 hist(etefloride$Min, 
      main="Distribution des températures minimales en Floride en été", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
etefloride <- floride_stat_saison[floride_stat_saison$Saison == "Ete",]
 hist(etefloride$Max, 
      main="Distribution des températures maximales en Floride en été", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
hiverfloride <- floride_stat_saison[floride_stat_saison$Saison == "Hiver",]
 hist(hiverfloride$Min, 
      main="Distribution des températures minimales en Floride en hiver", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
hiverfloride <- floride_stat_saison[floride_stat_saison$Saison == "Hiver",]
 hist(hiverfloride$Max, 
      main="Distribution des températures maximales en Floride en hiver", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
##KANSAS

etekansas <- kansas_stat_saison[kansas_stat_saison$Saison == "Ete",]
 hist(etekansas$Min, 
      main="Distribution des températures minimales au Kansas en été", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
etekansas <- kansas_stat_saison[kansas_stat_saison$Saison == "Ete",]
 hist(etekansas$Max, 
      main="Distribution des températures maximales au Kansas en été", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
hiverkansas<- kansas_stat_saison[kansas_stat_saison$Saison == "Hiver",]
 hist(hiverkansas$Min, 
      main="Distribution des températures minimales au Kansas en hiver", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
hiverkansas<- kansas_stat_saison[kansas_stat_saison$Saison == "Hiver",]
 hist(hiverkansas$Max, 
      main="Distribution des températures maximales au Kansas en hiver", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )

##New York

etenewyork <- newyork_stat_saison[newyork_stat_saison$Saison == "Ete",]
 hist(etenewyork$Min, 
      main="Distribution des températures minimales à New York en été", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )

etenewyork <- newyork_stat_saison[newyork_stat_saison$Saison == "Ete",]
 hist(etenewyork$Max, 
      main="Distribution des températures maximales à New York en été", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )

hivernewyork <- newyork_stat_saison[newyork_stat_saison$Saison == "Hiver",]
 hist(hivernewyork$Min, 
      main="Distribution des températures minimales à New York en hiver", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
hivernewyork <- newyork_stat_saison[newyork_stat_saison$Saison == "Hiver",]
 hist(hivernewyork$Max, 
      main="Distribution des températures maximales à New York en hiver", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )

##Montana
etemontana <- montana_stat_saison[montana_stat_saison$Saison == "Ete",]
 hist(etemontana$Min, 
      main="Distribution des températures minimales au Montana en été", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
etemontana <- montana_stat_saison[montana_stat_saison$Saison == "Ete",]
 hist(etemontana$Max, 
      main="Distribution des températures maximales au Montana en été", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
hivermontana <- montana_stat_saison[montana_stat_saison$Saison == "Hiver",]
 hist(hivermontana$Min, 
      main="Distribution des températures minimales au Montana en hiver", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
hivermontana <- montana_stat_saison[montana_stat_saison$Saison == "Hiver",]
 hist(hivermontana$Max, 
      main="Distribution des températures maximales au Montana en hiver", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )

##Californie
etecaliforni <- californi_stat_saison[californi_stat_saison$Saison == "Ete",]
 hist(etecaliforni$Min, 
      main="Distribution des températures minimales en Californie en été", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
etecaliforni <- californi_stat_saison[californi_stat_saison$Saison == "Ete",]
 hist(etecaliforni$Max, 
      main="Distribution des températures maximales en Californie en été", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
hivercaliforni <- californi_stat_saison[californi_stat_saison$Saison == "Hiver",]
 hist(hivercaliforni$Min, 
      main="Distribution des températures minimales en Californie en hiver", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
hivercaliforni <- californi_stat_saison[californi_stat_saison$Saison == "Hiver",]
 hist(hivercaliforni$Max, 
      main="Distribution des températures maximales en Californie en hiver", 
      xlab="Températures", 
      border="black", 
      col="blue",
     )
