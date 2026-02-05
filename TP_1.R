

#Exercice 1 jeu de donnees iris
iris
class(iris)
View(iris) #ouvre une autre page pour mieux visualiser iris

nrow(iris)
ncol(iris)
colnames(iris)
summary(iris)

iris[ , c("Sepal.Length","Species")] 

iris[c(100, 103),105, ]

iris[50:100, ]

mean(iris$Sepal.Length) #moyenne de environs 5.84
sd(iris$Petal.Length) #ecart type de environs 1.76

median(iris$Sepal.Length) #mediane de 5.8

quantile(iris$Petal.Width, probs = seq(from = 0.1, to = 0.9, by =0.1)) #a revoir

#Exercice 2 mangas et animes

repertoir_data= setwd(dir = "M:/BUT/SD/Promo 2025/ibouchoul/dataset") #chemin de là ou se trouvent les fichiers csv
dfMangas = read.csv("manga.csv",header=TRUE, dec=".", sep=",")
dfAnimes = read.csv("anime.csv", header=TRUE, dec=".", sep=",")

class(dfMangas) #dataframe
class(dfAnimes) #dataframe

View(dfMangas)
View(dfAnimes)

#lignes et colonnes 
dim(dfAnimes)
dim(dfMangas) #une colonne en plus pour les mangas
score

mean(dfAnimes$Score) #anime a une meilleure moyenne 
mean(dfMangas$Score)

#count.fields(dfAnimes$Vote) faux pour compter on fait la fonction sum

sum(dfAnimes$Vote) #les animes ont le plus de vote
sum(dfMangas$Vote)

sd(dfAnimes$Score)
sd(dfMangas$Score) #les manga ont un ecart type plus homogene car moins eleve 

quantile(dfMangas$Score, probs = seq(from = 0.1, to = 0.9, by =0.1)) 

quantile(dfAnimes$Score, probs = seq(from = 0.1, to = 0.9, by =0.1)) #premier decile est le meme pour les manga et anime

#les fonctions subset ect

#filtre sur les manga

extraction1 = subset(dfMangas, Score > 9) #manga avec une note superieure a 9/10
nrow(extraction1) #nombre de lignes pour la premiere extraction 

extraction2 = subset(dfMangas, Vote>=200000) #manga avec plus de 200000 votes
nrow(extraction2) 

extraction3 = subset(dfMangas, Vote >200000 & Score >8 )
nrow(extraction3)

extraction4 = subset(dfMangas, Score >=7 & Score <=8)
nrow(extraction4)

#filtre sur les animes 

effectif_var_rating = table(dfAnimes$Rating) #rating est le genre de l'anime 
print(effectif_var_rating)
length(effectif_var_rating)

prop.table(effectif_var_rating) #en pourcentage 

extraction5 = subset(dfAnimes, Rating==("R - 17+ (violence & profanity)"))
nrow(extraction5)

extraction6 = subset(dfAnimes, Rating==("R - 17+ (violence & profanity)") & Score >=8)
nrow(extraction6)


extraction7 = subset(dfAnimes, Rating!=("R - 17+ (violence & profanity)"))
nrow(extraction7)


extraction8= subset(dfAnimes, Rating %in% c("PG - Children","G - All Ages")) #a revoir
nrow(extraction8)

extraction9 = subset(dfAnimes, !Rating%in% c("PG - Children","G - All Ages")) #correspondent pas ! 
nrow(extraction9)

extraction10 = subset(dfAnimes, Score >=9 | Vote >400000  )
nrow(extraction10)

#fonctions rbind 

#pour conserver que le titre note votes et classement

dfMangas = dfMangas[ , c("Title", "Score","Vote","Ranked")]

dfAnimes = dfAnimes[ , c("Title", "Score","Vote", "Ranked")]

dfAnimes$Type = "Anime"
dfMangas$Type = "Manga"

dfConcat = rbind(dfMangas,dfAnimes)
View(dfConcat)


write.table(x = dfConcat, file = "M:/BUT/SD/Promo 2025/ibouchoul/ExportTp1.csv",
            sep = ";",row.names = FALSE)

