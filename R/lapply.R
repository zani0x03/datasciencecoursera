#lapply recebe uma lista e faz um for com a função desejada, uma forma
#de simplificar e automatizar um for;
x <- list (a = 1:5, b = rnorm(10))
lapply(x, mean)

x <- list (a = 1:4, b = rnorm(10), c = rnorm(20,1), d = rnorm(100,5))
lapply(x, mean)

x <- 1:4
lapply(x, runif)

x <- 1:4
lapply(x, runif, min = 7, max = 10)

##cria uma matrix, e depois cria uma função onde retorna apenas a primeira coluna
#a função elt só existirá enquanto a função lapply estiver executando, após isso
#ela deixará de existir.
x <- list(a = matrix(1:4,2,2), b=matrix(1:6,3,2)) 
lapply(x, function(elt) elt[,1])

#ao contrário do lapply (retorna uma lista) o sapply retorna uma vetor
x <- list(a=1:4,b=rnorm(10),c=rnorm(20,1),d=rnorm(100,5))
#lapply(x, mean)
sapply(x,mean)
