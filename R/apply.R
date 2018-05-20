##use with array(matrix)

#Exemplo abaixo coluna é a base
x <- matrix(rnorm(200),20,10) ##matrix de 20 linhas e 10 colunas
apply(x, 2, mean)

##linha é a base
x <- matrix(rnorm(200),20,10) ##matrix de 20 linhas e 10 colunas
apply(x, 1, mean)

x <- matrix(rnorm(200),20,10) ##matrix de 20 linhas e 10 colunas
apply(x, 1, quantile,probs=c(0.25,0.75))

a <- array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)
rowMeans(a,dims=2)
  
# rowSuns = apply(x,1,sum)
# rowMeans = apply(x,1,mean)
# colSuns = apply(x,2,sum)
# colMeans = apply(x,1,sum)