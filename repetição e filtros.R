idades <- c(35,30, 24,26,31,12) #variáveis para guardar a informação
nomes <- c("João","Camila", "Maria", "PAulo","José","Adriana" ) #variáveis para guardar a informação

df <- data.frame(nomes,idades) #cria dataframe é como se fosse excel

#estrutura for
#for (i in idades){
#  print(i)
#}

#selecionando o maior
maior <- 0

for (i in df$idades){
  if (i > maior) {maior <- i}
}
df$nomes[df$idades==maior]

#filtro por nome
#df$idades[df$nomes=="João"]
#df$idades[df$nomes=="Camila"]

#estrutura condicional
# if (df$idades[df$nomes=="João"] > df$idades[df$nomes=="Camila"]){
#   "Mais velho: João"
# } else {
#   "Mais velho: Camila"
# }


