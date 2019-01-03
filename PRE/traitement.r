# Pour lancer le programme dans la console ecrire : source('PRE/traitement.r')

# State Code 
# sc <- smp[6,3] # [Ligne, Colonne] [identifiant de la ligne, identifiant de la colonne]
# print(sc)

# creer le tableau pour les etats : Montana, New York, Kansas, Floride, Californi 
montana <- data.frame(row.names=c("State.Code", "County.Code", "Site.Num", "Parameter.Code", "POC", "Latitude", "Longitude", "Datum", "Parameter.Name", "Sample.Duration", "Polluant.Standard", "Date.Local", "Units.of.Measure", "Event.Type", "Observation.Count", "Observation.Percent", "Arithmetic.Mean", "X1st.Max.Value", "X1st.Max.Hour", "AQI", "Method.Code", "Method.Name", "Local.Site.Name", "Address", "State.Name", "County.Name", "City.Name", "CBSA.Name", "Date.of.Last.Change")) 
newyork <- data.frame(row.names=c("State.Code", "County.Code", "Site.Num", "Parameter.Code", "POC", "Latitude", "Longitude", "Datum", "Parameter.Name", "Sample.Duration", "Polluant.Standard", "Date.Local", "Units.of.Measure", "Event.Type", "Observation.Count", "Observation.Percent", "Arithmetic.Mean", "X1st.Max.Value", "X1st.Max.Hour", "AQI", "Method.Code", "Method.Name", "Local.Site.Name", "Address", "State.Name", "County.Name", "City.Name", "CBSA.Name", "Date.of.Last.Change")) 
kansas <- data.frame(row.names=c("State.Code", "County.Code", "Site.Num", "Parameter.Code", "POC", "Latitude", "Longitude", "Datum", "Parameter.Name", "Sample.Duration", "Polluant.Standard", "Date.Local", "Units.of.Measure", "Event.Type", "Observation.Count", "Observation.Percent", "Arithmetic.Mean", "X1st.Max.Value", "X1st.Max.Hour", "AQI", "Method.Code", "Method.Name", "Local.Site.Name", "Address", "State.Name", "County.Name", "City.Name", "CBSA.Name", "Date.of.Last.Change")) 
floride <- data.frame(row.names=c("State.Code", "County.Code", "Site.Num", "Parameter.Code", "POC", "Latitude", "Longitude", "Datum", "Parameter.Name", "Sample.Duration", "Polluant.Standard", "Date.Local", "Units.of.Measure", "Event.Type", "Observation.Count", "Observation.Percent", "Arithmetic.Mean", "X1st.Max.Value", "X1st.Max.Hour", "AQI", "Method.Code", "Method.Name", "Local.Site.Name", "Address", "State.Name", "County.Name", "City.Name", "CBSA.Name", "Date.of.Last.Change")) 
californi <- data.frame(row.names=c("State.Code", "County.Code", "Site.Num", "Parameter.Code", "POC", "Latitude", "Longitude", "Datum", "Parameter.Name", "Sample.Duration", "Polluant.Standard", "Date.Local", "Units.of.Measure", "Event.Type", "Observation.Count", "Observation.Percent", "Arithmetic.Mean", "X1st.Max.Value", "X1st.Max.Hour", "AQI", "Method.Code", "Method.Name", "Local.Site.Name", "Address", "State.Name", "County.Name", "City.Name", "CBSA.Name", "Date.of.Last.Change")) 

annee <- 1980
for(i in 0:38){ # 38 annees 
  print(annee)
  nom_fichier <- paste("PRE/BDD/daily_TEMP_", annee, ".csv", sep = "")
  smp <- read.csv(nom_fichier, header = TRUE, sep = ",")
  annee <- annee + 1
  
  # Remplissage des tableaux avec les fichier de 1980 a 2018
  montana <- rbind(montana,smp[smp$State.Code == 30,])
  newyork <- rbind(newyork,smp[smp$State.Code == 36,])
  kansas <- rbind(kansas,smp[smp$State.Code == 05,])
  floride <- rbind(floride,smp[smp$State.Code == 12,])
  californi <- rbind(californi,smp[smp$State.Code == 06,])
}