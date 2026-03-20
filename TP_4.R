
#Exercice 1 : 

#1-
#75% cadre et #78% non cadre 
fun_salarire_net_cadre = function(salaire_brut){
  
salaire_net = salaire_brut * 0.75
return(salaire_net)
}
fun_salarire_net_cadre(salaire_brut = 1000)

#2-
fun_salarire_net_cadre = function(salaire_brut= 2500){
  
  salaire_net = salaire_brut * 0.75
  return(salaire_net)
}
fun_salarire_net_cadre(salaire_brut = 2500)


#3-
fun_salarire_net_cadre = function(salaire_brut, tmps_travail = 1) {
  
  salaire_net = salaire_brut * 0.75 * tmps_travail
  return(salaire_net)
}

fun_salarire_net_cadre(salaire_brut = 2500)


#4-
fun_salarire_net_cadre = function(salaire_brut, tmps_travail = 1) {
  
  if (!is.numeric(salaire_brut)) 
  {return("il y a une erreur")}
  
  
    
  salaire_net = salaire_brut * 0.75 * tmps_travail
  return(salaire_net)
}

fun_salarire_net_cadre((salaire_brut = "2000$"))

#5-
fun_salarire_net_cadre = function(salaire_brut, tmps_travail = 1) {
  
  if (!is.numeric(tmps_travail))
      {return("il y a une erreur")}
      
 if ((tmps_travail > 1) & (tmps_travail <0))
    
    {return("il y a une erreur")}
  

  
  salaire_net = salaire_brut * 0.75 * tmps_travail
  return(salaire_net)
}

fun_salarire_net_cadre(salaire_brut = 25000, tmps_travail = 2)
fun_salarire_net_cadre(salaire_brut = 150, tmps_travail = "30%")     
     
      
#6-
fun_salaire_net = function(salaire_brut= 2500, statut){
  
  
  if ((statut != "Cadre") & (statut!= "Non Cadre")) 
  {return("erreur soit cadre ou no cadre seulement")}
  
  if (statut == "Cadre") {salaire_net = salaire_brut *0.75}
    
  else {salaire_net = salaire_brut * 0.78}
  
  return(salaire_net) 
  
  }
  
fun_salaire_net(salaire_brut = 2500, statut == "Cadre")
  

#7-

  
  
  
  
  
  
  
  
  
  