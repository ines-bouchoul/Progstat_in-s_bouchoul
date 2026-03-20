#Exercice 1 :

#1-
nouveau_rep = setwd(dir="M:/BUT/SD/Promo 2025/ibouchoul/dataset")
getwd()
velo = read.csv(file = "velov.csv", header = TRUE, dec = ",", sep= ";")

#2- 
summary(velo)
class(velo$status)
class(velo$CodePostal)

#3- 
as.factor(velo$status) #pour changer le type en factor 
as.factor(velo$CodePostal)

#4-
velo$bornes = ifelse(velo$capacity != (velo$bikes + velo$stands), "KO" , "OK") #pour prendre les données 
table(velo$bornes) #pour créer la nouvelle colonne borne dans le fichier avec table 


#Exercice 2 : 

#1- #2- #3- #4-
hist(x = velo$capacity,
     main = "Distribution des capacites pour les vélos",
     xlab = "capacity",
     col = "pink",
     breaks = 6, 
     prbability = FALSE, 
     ylim= c(0,300),
     xlim= c(0,200))

#pour changer les intervalle/ les classes avec breaks
#pour changer la couleur on change avec col 
#pour changer le nom des abscices c'est xlabel 

#5-
abline(
       h = 100,  #h car on veut en ordonnee la valeur 100 correspondant à l'emplacment de la ligne verticale 
       col = "blue",
       lty = 2) #ity pour le type de line 

#6- 

hist(x= velo$capacity,
     main = "Distribution de la capacite pour les velos",
     xlab = "capacite",
     col = "purple",
     breaks = 6,
     probability = FALSE, 
     xlim = c(0,300),
     ylim = c(0,0.08))

density(velo$capacity)
lines(x = density(velo$capacity),
      lwd = 6, 
      lty = 4, 
      col= "yellow")
 
#Exercice sur les fonctions R :

#1-
boxplot(x= velo$capacity,
        main = "Boite à moustache des capacites des velos", 
        outline = TRUE,
        horizontal = FALSE)
        #ylim = c(0, 10),
        #xlim = c(0, 10))

#on peut le faire plus simplement en specificiant juste le x et main

#2- 
boxplot(x= velo$capacity,
        main = "Boite à moustache des capacites des velos", 
        outline = TRUE,
        horizontal = TRUE) #on change juste l'orizntation en mode horizontal = TRUE 

#3-
#les valeurs atypiques sont les valeurs absurdes en haut et en bas 
boxplot(x= velo$capacity,
        main = "Boite à moustache des capacites des velos", 
        outline = FALSE,
        horizontal = FALSE)

#outline c'est pour les valeurs absurdes donc on met FALSE 


#4-
boxplot(x= velo$capacity,
        main = "Boite à moustache des capacites des velos", 
        outline = FALSE,
        horizontal = FALSE)

moyenne_capacite = mean(velo$capacity, na.rm = TRUE)
points(moyenne_capacite,
       pch = 16, 
       col = "coral", 
       cex = 4)

#boxplot : repartition , ecart entre les intervalle, plus la boite et reduite moins il y a d'heterogeinite entre les eleemtents de l'ensemble  

#5-
par(mfrow= c(1, 2))
sept = subset(velo, CodePostal == "69007")

boxplot(x = sept$bikes, 
        main = "Boite à moustache des velos diponibles dans le 8e",
        ylim = c(0,40))
#8ème

huit = subset(velo, CodePostal == "69008")

boxplot(x= huit$bikes, 
        main = "Boite à moustache des
        velos disponibles dans le 8e", 
ylim = c(0, 40))

#boxplot : repartition , ecart entre les intervalle, plus la boite et reduite moins il y a d'heterogeinite entre les eleemtents de l'ensemble  


#6- 
par(mfrow = c(1, 1))

boxplot(formula = bikes ~ bonus,
        data = velo, 
        main = "Boite à moustache des disponibilites des vélos 
        comparee aux stations bonus")

#7-
mean = tapply(X = velo$bikes, 
                      INDEX = velo$bonus, 
                      FUN = function(X) mean(X))

print(mean)
points(mean, col = "coral", pch = 19)


#Exercice 4 : 

#1-

effectif_bonus = table(velo$bonus)
barplot(height = effectif_bonus,
        main = "Diagramme en bar des stations de velos", 
        xlab = "Axe X", 
        ylab = "Axe Y", 
        horiz = FALSE, 
        col = "antiquewhite", 
        las = 3)




#2-

effectif_bonus = table(velo$bonus)
barplot(height = effectif_bonus,
        main = "Diagramme en bar des stations de velos", 
        xlab = "Axe X", 
        ylab = "Axe Y", 
        horiz = TRUE, 
        col = "aquamarine", 
        las = 3)

#pareil mais en mode horizontale avec horiz = true 


#3-
effectif_bonus = table(velo$bonus)
pourcentage_bonus = prop.table(x = effectif_bonus)

barplot(height = pourcentage_bonus,
        main = "Diagramme en bar des stations de velos en %", 
        xlab = "Axe X", 
        ylab = "Axe Y", 
        horiz = TRUE, 
        col = "aquamarine4", 
        las = 3)

#4-
effectif_bonus_paiment = table(velo$banking, velo$bonus)
print(effectif_bonus_paiment)

barplot = (height = effectif_bonus_paiment, 
           main = "Diagramme en bar des bonus et borne de paiment", 
           xlab = "Station bonus")



#line ou abline pareil




