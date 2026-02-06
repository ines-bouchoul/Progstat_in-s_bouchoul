#révisions

#quantile (df$Score,probs = quantile qui nous interesse 0.25,0.50,  ) 
#$ pour atteindre la colonne quuon veut. sequ(pour creer un vecteur from.. to.. by...)
#df pour dataframetoto[c(2,3)] pour atteindre plusieurs valeurs de notre vecteurs
#ds un df alors plus en 1 dimmm 

#Exercice 1

#1-
repertoir_data = setwd(dir="M:/BUT/SD/Promo 2025/ibouchoul/dataset") #chemin pour acceder au fichier csv
dfFao = read.csv("fao.csv", header = TRUE, dec=",", sep =";" )
View(dfFao)
#2- 
ncol(dfFao) #pour compter le nombre de colonnes
#3-
summary(dfFao) #resume du dataframe

#Exercice 2

#1- 
mean(dfFao$Dispo_alim, na.rm=TRUE) #moyenne des valeurs manquantes dans la dispo alim
#2-
sum(dfFao$Population, na.rm=TRUE) #nombres d'habitants dans le monde
#3-
sd(dfFao$Export_viande, na.rm=TRUE) #ecarttype du volume d'exportation de viande
sd(dfFao$Import_viande, na.rm=TRUE) #ecarttype du volume d'importation  de viande
#4-
median(dfFao$Prod_viande, na.rm=TRUE) #median de la production de viande
#5-
quantile(dfFao$Dispo_alim) #quantiles de la dispo alimentaire en Kcal
#6-
quantile(dfFao$Import_viande, probs = seq(from=0, to =1, by=0.01)) #les centiles

#Exercice 3

#1-
rang = order(dfFao$Population, decreasing= FALSE) #order pour ranger les donnees 
resultat = head(dfFao[ rang , ], n = 5) #n pour l'effectif qu'on veut donc ici 5 pays 
View(resultat) #pour visualiser le resultat de la requete 
#2-
rang2 = order(dfFao$Population, decreasing = TRUE) #ordre decroissant
resultat2 = head(dfFao[ rang2, ], n=5)
View(resultat2)
#3-
rang3 = order(dfFao$Prod_viande, decreasing = TRUE) 
resultat3 = head(dfFao[rang3, ], n=5)
View(resultat3)
#4-
rang4 = order(dfFao$Import_viande, decreasing = TRUE) 
resultat4 = head(dfFao[rang3, ], n=5)
View(resultat4)
#5-
extraction1 = subset(dfFao, Dispo_alim >=2300)
View(extraction1)
#6-
            
