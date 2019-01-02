# Pour lancer le programme dans la console ecrire : source('PRE/traitement.r')

smp <- read.csv("PRE/BDD/daily_TEMP_1980.csv", header = TRUE, sep = ",")

# State Code 
# sc <- smp[6,3] # [Ligne, Colonne] [identifiant de la ligne, identifiant de la colonne]
# print(sc)

# creer le tableau pour les etats : Montana 
montana <- data.frame(row.names=c("State.Code", "County.Code", "Site.Num", "Parameter.Code", "POC", "Latitude", "Longitude", "Datum", "Parameter.Name", "Sample.Duration", "Polluant.Standard", "Date.Local", "Units.of.Measure", "Event.Type", "Observation.Count", "Observation.Percent", "Arithmetic.Mean", "X1st.Max.Value", "X1st.Max.Hour", "AQI", "Method.Code", "Method.Name", "Local.Site.Name", "Address", "State.Name", "County.Name", "City.Name", "CBSA.Name", "Date.of.Last.Change")) 
newyork <- data.frame(row.names=c("State.Code", "County.Code", "Site.Num", "Parameter.Code", "POC", "Latitude", "Longitude", "Datum", "Parameter.Name", "Sample.Duration", "Polluant.Standard", "Date.Local", "Units.of.Measure", "Event.Type", "Observation.Count", "Observation.Percent", "Arithmetic.Mean", "X1st.Max.Value", "X1st.Max.Hour", "AQI", "Method.Code", "Method.Name", "Local.Site.Name", "Address", "State.Name", "County.Name", "City.Name", "CBSA.Name", "Date.of.Last.Change")) 
kansas <- data.frame(row.names=c("State.Code", "County.Code", "Site.Num", "Parameter.Code", "POC", "Latitude", "Longitude", "Datum", "Parameter.Name", "Sample.Duration", "Polluant.Standard", "Date.Local", "Units.of.Measure", "Event.Type", "Observation.Count", "Observation.Percent", "Arithmetic.Mean", "X1st.Max.Value", "X1st.Max.Hour", "AQI", "Method.Code", "Method.Name", "Local.Site.Name", "Address", "State.Name", "County.Name", "City.Name", "CBSA.Name", "Date.of.Last.Change")) 
floride <- data.frame(row.names=c("State.Code", "County.Code", "Site.Num", "Parameter.Code", "POC", "Latitude", "Longitude", "Datum", "Parameter.Name", "Sample.Duration", "Polluant.Standard", "Date.Local", "Units.of.Measure", "Event.Type", "Observation.Count", "Observation.Percent", "Arithmetic.Mean", "X1st.Max.Value", "X1st.Max.Hour", "AQI", "Method.Code", "Method.Name", "Local.Site.Name", "Address", "State.Name", "County.Name", "City.Name", "CBSA.Name", "Date.of.Last.Change")) 
californie <- data.frame(row.names=c("State.Code", "County.Code", "Site.Num", "Parameter.Code", "POC", "Latitude", "Longitude", "Datum", "Parameter.Name", "Sample.Duration", "Polluant.Standard", "Date.Local", "Units.of.Measure", "Event.Type", "Observation.Count", "Observation.Percent", "Arithmetic.Mean", "X1st.Max.Value", "X1st.Max.Hour", "AQI", "Method.Code", "Method.Name", "Local.Site.Name", "Address", "State.Name", "County.Name", "City.Name", "CBSA.Name", "Date.of.Last.Change")) 

# val=as.vector(smp[2,])
# print(smp[2,])
# montana = rbind(montana, val)

# Remplissage du tableau Montana avec le fichier de 1980
for (i in 1:nrow(smp)) {
  if (smp[i,"State.Name"] == "Montana"){
    montana = rbind(montana, smp[i,])
  }
}

for (i in 1:nrow(smp)) {
  if (smp[i,"State.Name"] == "New York"){
    newyork = rbind(newyork, smp[i,])
  }
}

for (i in 1:nrow(smp)) {
  if (smp[i,"State.Name"] == "Kansas"){
    kansas = rbind(kansas, smp[i,])
  }
}

for (j in 1:nrow(smp)) {
  if (smp[i,"State.Name"] == "Floride"){
    floride = rbind(floride, smp[i,])
  }
}

for (i in 1:nrow(smp)) {
  if (smp[i,"State.Name"] == "Californie"){
    californie = rbind(californie, smp[i,])
  }
}
