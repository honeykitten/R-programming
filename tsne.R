setwd("C:/Users/Qtest/Documents/R2")
data = read.csv('digit.csv')
dim(data)
image = data[1:64]
number = as.character(data[,65])
color = rainbow(10)[data[,65]+1]

pca = prcomp(image)
plot(pca$x, typ = 'n')
text(pca$x, number, col = color)

d = dist(image)
mds = cmdscale(d)
plot(mds, typ = 'n')
text(mds, number, col = color)

library(tsne)
ts = tsne(image, initial_dims = 64)
plot(ts, typ = 'n')
text(ts, number, col = color)