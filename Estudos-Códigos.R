cidade <- c("Brasilia",
            "São Paulo",
            "Rio de Janeiro",
            "Porto Alegre"
            )

cidade [1]
temperatura[-2]
temperatura <- c(32, 22, 35, 17)

regiao <- c(1,2,2,3)

cidade2 <- cidade
cidade2

cidade2[3]

?c()

cidade2[5] <- "curitiba"

cidade2 <- NULL

#Fatores
?factor

UF <- factor(c("DF", "SP", "RS"))
UF

mensagem <- NULL

grau.isntrucao <- factor(c("Nível Médio",
                          "Superior",
                          "Nível médio",
                          "Fundamental"),
                  levels = c("Fundamental",
                             "Nível Méio",
                             "Superior"),
                  ordered = TRUE)
grau.isntrucao


#Listas - Aceita valores de diferentes tipos

?list()
pessoa <- list(sexo= "M", cidade = "Brasília", Idade = 20)
pessoa[[1]]

pessoa[["idade"]] <- 22
pessoa

#DELETANDO
pessoa[["idade"]] <- NULL
pessoa

#filtrando elementos da lista
pessoa[c("cidade", "idade")]

#criando um dataframe com vetores
df <- data.frame(cidade, temperatura)
df

df2 <- data.frame(cidade)
df2

#filtros
# recuperando valor da linha 1, coluna 2
df[1,2]

#todas as linhas da primeira coluna
df[,1]

#primeira linha e todas as colunas
df[1,]

#selecionando as 3 primeiras linhas
#da primeira e ultima coluna
df2[c(1:3), c(1, 3)]

#verificando o nome das colunas
names(df)

#verificando numero de linhas x colunas
dim(df)

#verificando os tipos de dados
str(df)

#acessar uma coluna do dataframe
df$cidade
df['cidade']

?matrix()
#Matrizes
m <- matrix(seq(1:9), nrow=3)
m

m2 <- matrix(seq(1:25),
             ncol = 5,
             byrow = TRUE,
             dimnames = list(c(seq(1:5)),
                             c('A','B','C','D','E')
                             )
             )
m2

#filtrando a matriz
m2[c(1:2), c("B", "C")]

#exemplo for
for (i in seq(12)){
  print(i)
}

i <- 0 
while(i<=10){
  #código
  print(i)
  i=i+1
}

x=10
if (x>0){
  print("Numero positivo")
}

nota = 10
if ( nota >=7) {
  print("Aprovado")
} else if (nota > 5 && nota < 7){
  print("Recuperação")
}else {
  print("Reprovado")
}

#criando função
par.impar <- function(num){
  if ((num %% 2)==0){
    return("Par")
  }else
    return("Ímpar")
}

#usando a função
num = 2
par.impar(num)

#apply
x<-seq (1:9)
matriz <- matrix(x,ncol=3)
matriz

result1<- apply(matriz,1,sum)
result1

result2 <- apply(matriz,2,sum)
result2

numeros.p <- c(2,4,6,8,10,12)
numeros.i <- c(1,3,5,7,9,11)
numeros <- list(numeros.p,numeros.i)
numeros

lapply(numeros, mean)

sapply(numeros, mean)

#GRÁFICOS

?mtcars

carros <- mtcars[,c(1,2,9)]

head(carros)

#histograma
hist(carros$mpg)


#dispersao
plot(carros$mpg,carros$cyl)

#criando gráficos utilizando o pacote ggplot2

#install.packsges("ggplot2")
library(ggplot2)

ggplot(carros,aes(am))+
  geom_bar()


#Instalando e carregando o pacote
install.packages("dplyr")
library(dplyr)
#trabalhando com junções


??dplyr
?data.frame

df1 <- data.frame(Produto = c(1,2,3,5), Preco = c(15,10,25,20))
head(df1)

df2 <- data.frame(Produto = c(1,2,3,4), Nome = c("A","B","C","D"))
head(df2)

#Resultado da junção df1 + df2 usando left join
df3 <- left_join(df1,df2,"Produto")
head(df3)

#Resultado da junção df1 + df2 usando right join
df4 <- right_join(df1,df2, "Produto")
head(df4)

#Resultado da junção df1 + df2 usando inner join
df5 <- inner_join(df1, df2, "Produto")
head(df5)

#DPLYR
?iris

head(iris)
glimpse(iris)








